var currentPlaylist = [];
var shufflePlayList = [];
var tempPlayList = [];
var audioElement;
var mouseDown = false;
var currentIndex = 0;
var repeat = false;
var shuffle = false;
var userLoggedIn;
var timer;

function openPage(url) {
  if(timer != null) {
    clearTimeout(timer);
  }
  if (url.indexOf("?") === -1) {
    url = url + "?";
  }
  var encodedUrl = encodeURI(url + "&userLoggedIn=" + userLoggedIn);
  $("#mainContent").load(encodedUrl);
  $("body").scrollTop(0);
  history.pushState(null, null, url);
}
// Add the 'popstate' event listener to handle back button
window.addEventListener("popstate", function(event) {
  var url = location.href;
  openPage(url);
});
function openPageInNewTab(url) {
  window.open(url, "_blank");
}


function formatTime(seconds) {
  var time = Math.round(seconds);
  var minutes = Math.floor(time / 60);
  var seconds = time - minutes * 60;

  var extraZero;
  if (seconds < 10) {
    extraZero = "0";
  } else {
    extraZero = "";
  }

  return minutes + ":" + extraZero + seconds;
}

function updateTimeProgressBar(audio) {
  $(".progressTime.current").text(formatTime(audio.currentTime));
  $(".progressTime.remaining").text(
    formatTime(audio.duration - audio.currentTime)
  );

  var progress = (audio.currentTime / audio.duration) * 100;
  $(".playbackBar .progress").css("width", progress + "%");
}

function updateVolumeProgressBar(audio) {
  var volume = audio.volume * 100;
  $(".volumeBar .progress").css("width", volume + "%");
}

function playFirstSong() {
  setTrack(tempPlayList[0], tempPlayList, true);
}

function Audio() {
  this.currentlyPlaying;
  this.audio = document.createElement("audio");

  this.audio.addEventListener("ended", function () {
    nextSong();
  });

  this.audio.addEventListener("canplay", function () {
    var duration = formatTime(this.duration);
    $(".progressTime.remaining").text(duration);
  });

  this.audio.addEventListener("timeupdate", function name() {
    if (this.duration) {
      updateTimeProgressBar(this);
    }
  });

  this.audio.addEventListener("volumechange", function () {
    updateVolumeProgressBar(this);
  });

  this.setTrack = function (track) {
    this.currentlyPlaying = track;
    this.audio.src = track.path;
  };
  this.play = function () {
    this.audio.play();
  };
  this.pause = function () {
    this.audio.pause();
  };

  this.setTime = function (seconds) {
    this.audio.currentTime = seconds;
  };
}
