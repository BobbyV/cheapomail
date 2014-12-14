<?php
    $conn = mysql_connect("127.0.0.1:3306","bobbyv","");
    $db = mysql_select_db("cheapomail",$conn);
    
    if($conn)
    {
        echo "Connection Successful";
    }
    else{echo "connection failed \n "; die();}
    
    $username = $_POST["username"];
    $password = $_POST["password"];
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    
    $sql = "INSERT INTO user (first_name, last_name, password, username) VALUES(
        '".$firstname."','".$lastname."','".$password."','".$username."'
    )";
    echo $username;
    echo $password;
    echo $firstname;
    echo $lastname;
    
    $querying = mysql_query($sql);
    if($querying)
    {
        #if users signup is successful redirect to homescreen
        echo "purest";
        exit();
    }
    else
    {
        #if user should be sent to the signup page with appropriate error
        echo "Login Failed Failed tks";
        exit();
    }
?>