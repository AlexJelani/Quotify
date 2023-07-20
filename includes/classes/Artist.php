<?php
class Artist {

    private $con;
    private $id;

    public function __construct($con, $id) {
        $this->con = $con;
        $this->id = $id;
    }

    public function getId() {
        return $this->id;
    }

    public function getName() {
        $artistQuery = mysqli_query($this->con, "SELECT name FROM artists WHERE id='$this->id'");

        // Check if the query returned any rows
        if ($artistQuery && mysqli_num_rows($artistQuery) > 0) {
            $artist = mysqli_fetch_array($artistQuery);
            return $artist['name'];
        } else {
            // Handle the case when the artist is not found (e.g., return a default value or an error message)
            return "Artist Not Found";
        }
    }


    public function getSongIds() {

        $query = mysqli_query($this->con, "SELECT id FROM songs WHERE artist='$this->id' ORDER BY plays ASC");

        $array = array();

        while($row = mysqli_fetch_array($query)) {
            array_push($array, $row['id']);
        }

        return $array;

    }
}
?>
