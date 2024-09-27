<?php
session_start(); // Ensure the session is started

if (isset($_POST['login'])) {
    // Fetch email and password from POST request
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    // Prepare SQL query to fetch user credentials
    $sql = "SELECT EmailId, Password, FullName FROM tblusers WHERE EmailId = :email";
    $query = $dbh->prepare($sql);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->execute();
    
    // Fetch user data
    $result = $query->fetch(PDO::FETCH_OBJ);
    
    if ($result && password_verify($password, $result->Password)) {
        // Set session variables
        $_SESSION['login'] = $email;
        $_SESSION['fname'] = $result->FullName;
        
        // Redirect to the current page or a specific page
        $currentpage = $_SERVER['REQUEST_URI'];
        echo "<script type='text/javascript'>document.location = '$currentpage';</script>";
    } else {
        echo "<script>alert('Invalid Details');</script>";
    }
}
?>
<div class="modal fade" id="loginform">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title">Login</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="login_wrap">
                        <div class="col-md-12 col-sm-6">
                            <form method="post">
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" placeholder="Email address*" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" name="password" placeholder="Password*" required>
                                </div>
                                <div class="form-group checkbox">
                                    <input type="checkbox" id="remember">
                                    <label for="remember">Remember me</label>
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="login" value="Login" class="btn btn-block">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer text-center">
                <p>Don't have an account? <a href="#signupform" data-toggle="modal" data-dismiss="modal">Signup Here</a></p>
                <p><a href="#forgotpassword" data-toggle="modal" data-dismiss="modal">Forgot Password?</a></p>
            </div>
        </div>
    </div>
</div>
