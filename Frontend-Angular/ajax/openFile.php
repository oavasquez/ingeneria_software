<?php
    try{
        $file = file_get_contents($_POST["pageName"]);

        $result = array();
        $result[0]["content"] = $file;

        echo json_encode($result);
        
    }catch(Exception $e){
        echo json_encode(array());
    }
    
?>