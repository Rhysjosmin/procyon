<?php

$con = mysqli_connect('localhost', 'root', '', 'procyon2022') or die("Could not connect to mysql".mysqli_error($con));


// if($con)
// {
//     echo" connected";
// }
// else
// {
//     echo "not connected";
// }

if(isset($_POST['login']))
{
    $user_name=$_POST['username'];
    // echo $user_name;
    $user_pass=$_POST['password'];
    $category=$_POST['event-category'];

    if($category=='class-event')
    {
        $check_user1="select * from crregistration WHERE username='$user_name'AND password='$user_pass' ";
        $run1=mysqli_query($con,$check_user1);
        $num1 = mysqli_num_rows($run1);
        if(mysqli_num_rows($run1)==1)
        {
          echo "Kindly Note: Registrations are closed for all the events now!";

            $_SESSION['username']=$user_name;//here session is used and value of $user_email store in $_SESSION.

        }
        else{

            echo "<script>alert('Email or password or choice is incorrect!')</script>";
            
        }
    }
    else if($category=='department-event')
    {
        $query="select * from deptregistrations WHERE username='".$user_name."'AND password='".$user_pass."'";
        $run2=mysqli_query($con,$query);
        if(mysqli_num_rows($run2)==1)
        {
         echo "Kindly Note: Registrations are closed for all the events now!";
           $_SESSION['username']=$user_name;
        }
        else{
            echo "<script>alert('Email or password or choice is incorrect!')</script>";
        }
    }
    else
    {
        echo "<script>alert('Please select a category!')</script>";
        //echo "Sorry";
    }
}
?>
