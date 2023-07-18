<?php
class Song {
    private $con;
    private $id;
    private $mysqLiData;
    private $title;
    private $artistId;
    private $albumId;
    private $genre;
    private $duration;
    private $path;

    public function __construct($con, $id) {
        $this->con = $con;
        $this->id = $id;

        $query = mysqli_query($this->con, "SELECT * FROM songs WHERE id='$this->id'");
        if ($query && mysqli_num_rows($query) > 0) {
            $this->mysqLiData = mysqli_fetch_assoc($query);
            $this->title = $this->mysqLiData['title'];
            $this->artistId = $this->mysqLiData['artistId'] ?? null;
            $this->albumId = $this->mysqLiData['albumId'] ?? null;
            $this->genre = $this->mysqLiData['genre'];
            $this->duration = $this->mysqLiData['duration'];
            $this->path = $this->mysqLiData['path'];
        } else {
            // Handle the case when the song is not found
            $this->mysqLiData = null;
            $this->title = null;
            $this->artistId = null;
            $this->albumId = null;
            $this->genre = null;
            $this->duration = null;
            $this->path = null;
        }
    }


    public function getTitle() {
        return $this->title;
    }
    public function getId() {
        return $this->id;
    }
    public function getArtist() {
        return new Artist($this->con, $this->artistId) ;
    }
    public function getAlbum() {
        return new Album($this->con, $this->albumId) ;
    }
    public function getPath() {
        return $this->path;
    }
    public function getDuration() {
        return $this->duration;
    }
    public function getGenre() {
        return $this->genre;
    }
    public function getMysqliData() {
        return $this->mysqLiData;
    }
    
  }

  ?>