<?php

include "dbconnect.php";



$json = json_decode(file_get_contents("php://input"), true);
switch ($json['action']){
    case "add":
        $name = $json['payload']['Name'];
        $sname = $json['payload']['Subname'];
        $price = $json['payload']['Price'];
        
        $db = DB :: dbconn();
        $query = $db -> query("INSERT INTO `goods`(`ID`, `Picture`, `Subname`, `Name`, `Price`, `Description`, `Result`, `Lifehack`, `Number`) 
        VALUES (NULL, '', '$sname', '$name', '$price', '', '', '', '0')");

        if($query){

            echo json_encode([
                "status"=>"ok",
            ]);
            
        }

        break;

}