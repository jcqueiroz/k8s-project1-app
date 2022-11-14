<?
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

include 'connections.php';

$id =  rand(1, 999);
$name = $_POST["name"];
$email = $_POST["email"];
$comments = $_POST["comments"];

$query = "INSERT INTO message(id, name, email, comments) VALUES ('$id', '$name', '$email', '$comments')";


if ($link->query($query) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $link->error;
}
?>