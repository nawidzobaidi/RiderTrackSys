<?php

require "core.php";
if (isset($_POST["req"])) { switch ($_POST["req"]) {
  // INVALID REQUEST
  default: echo "Invalid request."; break;

  //UPDATE RIDER LOCATION
  case "update":
    $pass = $_TRACK->update($_POST["rider_id"], $_POST["lng"], $_POST["lat"]);
    echo json_encode([
      "status" => $pass ? 1 : 0,
      "message" => $pass ? "OK" : $trackLib->error
    ]);
    break;

  //GET RIDER LOCATION
  case "get":
    $location = $_TRACK->get($_POST["rider_id"]);
    echo json_encode([
      "status" => is_array($location) ? 1 : 0,
      "message" => $location
    ]);
    break;

  //GET ALL RIDER LOCATIONS
  case "getAll":
    $location = $_TRACK->getAll();
    echo json_encode([
      "status" => is_array($location) ? 1 : 0,
      "message" => $location
    ]);
    break;
}}