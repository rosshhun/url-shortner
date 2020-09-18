<?php

require_once("includes/db.php");
require_once("includes/functions.php");
session_start();

if($_SERVER['REQUEST_METHOD'] == "POST") {

    $username = trim($_POST['username']);
    $email    = trim($_POST['email']);
    $password = trim($_POST['password']);


    $error = [

        'username'=> '',
        'email'=>'',
        'password'=>''

    ];


    if(strlen($username) < 4){

        $error['username'] = 'Username needs to be longer';


    }

     if($username ==''){

        $error['username'] = 'Username cannot be empty';


    }


     if(username_exists($username)){

        $error['username'] = 'Username already exists, pick another another';


    }



    if($email ==''){

        $error['email'] = 'Email cannot be empty';


    }


     if(email_exists($email)){

        $error['email'] = 'Email already exists, <a href="index.php">Please login</a>';


    }


    if($password == '') {


        $error['password'] = 'Password cannot be empty';

    }



    foreach ($error as $key => $value) {
        
        if(empty($value)){

            unset($error[$key]);

        }



    } // foreach

    if(empty($error)){

        register_user($username, $email, $password);

        $data['message'] = $username;

        login_user($username, $password);

        header("Location:dashboard/index.php");


    }

    

} 


?>
 


<!DOCTYPE html>
<html lang="en-US">

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="IE=edge" http-equiv="X-UA-Compatible" />
    <meta name="referrer" content="origin" />
    <title>Shortly</title>

    <link
      rel="stylesheet"
      id="fvm-header-0-css"
      href="assets/css/sign_up.css"
      type="text/css"
      media="all"
    />
   

  </head>
  <body class="registration-pages sign_up">
    <br><br><br>
    </div>
    <div class="signup-flow-container hidden post-header">
      <span class="signup-flow-elem em"
        >Create an <br class="signup-flow-br" />account</span
      >
      <hr />
      <span class="signup-flow-elem">
        Enter payment <br class="signup-flow-br" />information</span
      >
      <hr />
      <span class="signup-flow-elem"
        >Get your free <br class="signup-flow-br" />domain</span
      >
    </div>
    <div class="container-box title">
      <h3 class="switch to-sign-in tagline">
        Sign up and <br class="br" />start shortening
      </h3>
      <h3 class="switch to-sign-up tagline">
        Log in and <br class="br" />start sharing
      </h3>
      <div class="t-center">
        <div class="switch to-sign-up" tabindex="7">
          <span class="gray-link">Don't have an account?</span>
          <a id="sign-up-link" href="sign_up.html">Sign Up</a>
        </div>
        <span class="switch to-sign-in" tabindex="8">
          <span class="gray-link">Already have an account?</span>
          <br class="br" />
          <a id="sign-in-link" href="sign_in.html">Log in</a>
  
      </div>
    </div>
    <div class="container-box">
      <form id="sign-up" method="POST" action="sign_up.php">
        <div class="social-sign-in">
          <a
            id="google-sign-up"
            rel="nofollow"
            href="https://accounts.google.com/o/oauth2/v2/auth?nonce=2fb78362-fa60-4504-9a73-ec8c9f95f479&amp;prompt=consent+select_account&amp;state=026be8aa-4c89-478a-b515-f4882d8094a8&amp;redirect_uri=https%3A%2F%2FShortly.com%2Fa%2Fadd_google_account&amp;response_type=code&amp;client_id=489890094529-ueegekuf9mubvv4sc6bh57op2rkjok62.apps.googleusercontent.com&amp;scope=openid+profile+email&amp;display=page"
            class="susi-btn social-susi-btn button"
            data-network="google"
            ><img
              src="http://d1ayxb9ooonjts.cloudfront.net/8bc625062aeffa94729b9336243bed9d.svg"
              alt="Google"
              width="20"
            /><span class="sign-up-text">Sign up with Google</span></a
          >
        </div>
        <p class="separator t-center">
          <span>Or</span>
        </p>
        <div class="susi-fields-wrapper">
          <fieldset>
            <label class="text" for="username">Username</label>
            <input
              class="text"
              type="text"
              name="username"
              autocomplete="username"
              tabindex="3"
              autocorrect="off"
              autocapitalize="none"
            />
            <span class="error-message hidden"></span>
            <label class="text" for="email">Email address</label>

            <input
              class="text"
              type="text"
              name="email"
              autocomplete="email"
              tabindex="4"
              autocorrect="off"
              autocapitalize="none"
            />

            <span class="error-message hidden"></span>
            <label class="text" for="password" class="password-block">
              Password
              <span class="password-toggle">
                <span class="password-toggle-text">Show</span>
                <span class="password-toggle-icon"
                  ><img
                    src="http://dl6fh5ptkejqa.cloudfront.net/2b21cdf7bb0327252f60662d1fdfbc32.svg"
                    alt="show/hide password icon"
                    width="24"
                /></span>
              </span>
            </label>
            <input
              class="pw"
              class="text"
              type="password"
              name="password"
              autocomplete="new-password"
              tabindex="5"
              autocorrect="off"
              autocapitalize="none"
            />
            <span class="error-message hidden"></span>
            <div class="switch to-sign-in password-tip">
              <div class="strength">
                <div class="strength--item">
                  <div class="strength--indicator">&bull;</div>
                  <div class="strength--text">6 or more characters</div>
                </div>
                <div class="strength--item">
                  <div class="strength--indicator">&bull;</div>
                  <div class="strength--text">One number</div>
                </div>
                <div class="strength--item">
                  <div class="strength--indicator">&bull;</div>
                  <div class="strength--text">One letter</div>
                </div>
                <div class="strength--item">
                  <div class="strength--indicator">&bull;</div>
                  <div class="strength--text">One special character</div>
                </div>
              </div>
            </div>
            
            <input
              id="submit"
              type="submit"
              name="sign_up"
              class="button button-primary sign-up-in"
              value="Sign up with Email"
              tabindex="8"
            />
            
          </fieldset>
        </div>
      </form>
      
      <div class="t-center">
        <div class="switch to-sign-in terms-and-conditions">
          <span
            >By creating an account, you agree to <br />Shortly's
            <a href="terms.php">Terms of Service</a> and
            <a href="privacy.php">Privacy Policy.</a></span
          >
        </div>
      </div>
    </div>

    
  </body>

 
</html>

