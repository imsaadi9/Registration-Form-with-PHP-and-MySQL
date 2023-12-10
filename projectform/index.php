
<?php 

$insert = false;

if(isset($_POST['name'])){
// Set connection variables
    $server = "localhost" ;
    $username = "root" ;
    $password = "" ;
    // create a database connection
    $con = mysqli_connect($server, $username, $password) ;
    // check for connection success
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    // echo "success connecting to this database";
    
    // collect post variables
    $name = $_POST['name'] ;
    $age = $_POST['age'] ;
    $gender = $_POST['gender'] ;
    $email = $_POST['email'] ;
    $phone = $_POST['phone'] ;
    $desc = $_POST['desc'] ;
    $sql = " INSERT INTO `form`.`form` (`name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES     ( '$name', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp());" ;
    // echo $sql ;
    
    // execute the query
    if($con->query($sql) == true){
        // echo "Successfully inserted" ;

        // flag for success insertion
        $insert = true ;
    }else {
        echo "ERROR: $sql <br> $con->error" ;
    }

    // close the database connection
    $con->close();
    
}
?>

<!-- -------Form Html copy paste from html file than delete that html file as long as it not needed------- -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <div class="container">
      <h1 class="a">Welcome To Harvard Registration Form</h1>  
      <p class="b">Enter your details and submit the form to confirm your participation in this Harvard registration form</p>
      <?php 
        if($insert == true){
          echo "<p class='submsg'>Thanks for Submitting your Form, We are happy to see !</p>" ;
        }
      ?>
        <form action="index.php" method="post">
        <input type="text" name="name" id="name" class="input" placeholder="Enter your name">
        <input type="text" name="age" id="age" class="input" placeholder="Enter your Age">
        <input type="text" name="gender" id="gender" class="input" placeholder="Enter your gender">
        <input type="email" name="email" id="email" class="input" placeholder="Enter your email">
        <input type="phone" name="phone" id="phone" class="input" placeholder="Enter your phone">
        <textarea name="desc" id="desc" cols="30" rows="10" placeholder="Enter any relevant information"></textarea>
        <div class="abc">
            <button class="btn b1">Submit</button>
            <input type="reset" name="reset" class="btn b2">
        </div>
      </form>
    </div>

    <script src="./script.js"></script>
    
    <!-- INSERT INTO `form` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ('1', 'testname', '23', 'male', 'this@this.com', '999999999999', 'this is very good form', current_timestamp()); -->

</body>
</html>

