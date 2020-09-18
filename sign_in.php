<?php 
  require_once("includes/db.php");
  require_once("includes/functions.php");
  session_start();
?>


<?php

		checkIfUserIsLoggedInAndRedirect('dashboard/index.php');


		if(ifItIsMethod('post')){

			if(isset($_POST['username']) && isset($_POST['password'])){

        login_user($_POST['username'], $_POST['password']);
   
        

			}else {
				redirect('sign_in.php');
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
  <body class="registration-pages sign_in">
   <br><br><br><br>
    
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
          <a id="sign-up-link" href="sign_up.php">Sign Up</a>
        </div>
        <span class="switch to-sign-in" tabindex="8">
          <span class="gray-link">Already have an account?</span>
          <br class="br" />
          <a id="sign-in-link" href="sign_in.php">Log in</a>
          <span>&bull;</span>
          
      </div>
    </div>
    <div class="container-box">

      <form id="sign-in" method="POST">
        
        <p class="t-center">Log in with:</p>
        <div class="social-sign-in">
          <a
            rel="nofollow"
            href="https://accounts.google.com/o/oauth2/v2/auth?nonce=2fb78362-fa60-4504-9a73-ec8c9f95f479&amp;prompt=consent+select_account&amp;state=026be8aa-4c89-478a-b515-f4882d8094a8&amp;redirect_uri=https%3A%2F%2FShortly.com%2Fa%2Fadd_google_account&amp;response_type=code&amp;client_id=489890094529-ueegekuf9mubvv4sc6bh57op2rkjok62.apps.googleusercontent.com&amp;scope=openid+profile+email&amp;display=page"
            class="susi-btn social-susi-btn button"
            data-network="google"
            ><img
              src="http://d1ayxb9ooonjts.cloudfront.net/518ec586a1814c0216f44b4844b86f5e.svg"
              alt="Google"
              width="20"
            /><span class="sign-up-text">Google</span></a
          >
          <a
            rel="nofollow"
            href="https://api.twitter.com/oauth/authorize?oauth_callback=https%3A%2F%2FShortly.com%2Fa%2Fadd_twitter_account&amp;oauth_token=jHnIZAAAAAAAXfCeAAABdD8L0ok&amp;brand_guid=None"
            class="susi-btn social-susi-btn button"
            data-network="twitter"
            ><img
              src="http://d3h5jhobc20ump.cloudfront.net/7eedb3d760d7794b248cf62bbbfd1d93.svg"
              alt="Twitter"
              width="22"
            /><span class="sign-up-text">Twitter</span></a
          >
          <a
            rel="nofollow"
            href="https://graph.facebook.com/oauth/authorize?scope=public_profile%2Cemail&amp;state=30a86dce-9ba9-4693-b27e-bc48c582fc25&amp;redirect_uri=https%3A%2F%2FShortly.com%2Fa%2Fadd_facebook_account&amp;display=page&amp;client_id=124707800885763"
            class="susi-btn social-susi-btn button"
            data-network="facebook"
            ><img
              src="http://d1ayxb9ooonjts.cloudfront.net/81a8d0e017721a03c0ca3e1133b93592.svg"
              alt="Facebook"
              width="20"
            /><span class="sign-up-text">Facebook</span></a
          >
          <a
            rel="nofollow"
            href="https://appleid.apple.com/auth/authorize?nonce=9d76b4b3-622b-4b71-8881-7473454f21f5&amp;state=4b8404da-50ac-441d-bc9e-1156c8e72bbf&amp;redirect_uri=https%3A%2F%2FShortly.com%2Fa%2Fadd_apple_account&amp;response_type=code+id_token&amp;client_id=com.Shortly.app&amp;scope=email+name&amp;response_mode=form_post"
            class="susi-btn social-susi-btn button"
            data-network="apple"
            ><img
              src="http://dl6fh5ptkejqa.cloudfront.net/eab92125cd7cb346e7f291bafce0a82f.svg"
              alt="Apple"
              width="20"
            /><span class="sign-up-text">Apple</span></a
          >
        </div>
        <p class="separator t-center">
          <span>Or</span>
        </p>
        <div class="susi-fields-wrapper">
          <fieldset>
            <label class="text" for="username">Email address or Username</label>

            <input
              class="text"
              type="text"
              name="username"
              autocomplete="username email"
              tabindex="3"
              autocorrect="off"
              autocapitalize="none"
            />

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
              tabindex="4"
              autocomplete="current-password"
              autocorrect="off"
              autocapitalize="none"
            />
            <span class="error-message hidden"></span>
            <a
              class="forgot"
              title="Password Reset"
              href="forgot_password.html"
              target="_blank"
              tabindex="6"
              >Forgot?</a
            >
            <input type="hidden" name="rd" value="/" />
            <input
              type="submit"
              name="Login"
              class="button button-primary sign-up-in"
              value="Log in"
              tabindex="5"
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
