<?php
session_start();
?>

<?php

if(!$_SESSION["username"]){
  
  header("Location: ../index.php");

}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <meta
      name="description"
      content="Responsive Bootstrap 4 Dashboard Template"
    />
    <meta name="author" content="BootstrapDash" />

    <title>Shortly</title>

    <!-- vendor css -->
    <link href="../assets/css/font-awsome.css" rel="stylesheet" />
    <link href="../assets/css/ionicons.css" rel="stylesheet" />
    <link href="../assets/css/typeicons.css" rel="stylesheet" />
    <link href="../assets/css/flagicons.css" rel="stylesheet" />

    <!-- azia CSS -->
    <link rel="stylesheet" href="../assets/css/normal.css" />
  </head>
  <body>
    <div class="az-header">
      <div class="container">
        <div class="az-header-left">
          <a href="../index.php" class="az-logo"
            ><span></span>
            <img
              src="../assets/icons/shortly.png"
              alt=""
              srcset=""
              width="100px"
              height="auto"
          /></a>
          <a href="#" id="azMenuShow" class="az-header-menu-icon d-lg-none"
            ><span></span
          ></a>
        </div>
        <!-- az-header-left -->
        <div class="az-header-menu">
          <div class="az-header-menu-header">
            <a href="index.html" class="az-logo"><span></span> Shortly</a>
            <a href="#" class="close">&times;</a>
          </div>
          <!-- az-header-menu-header -->
          <ul class="nav">
            <li class="nav-item active show">
              <a href="#" class="nav-link">Dashboard</a>
            </li>
            <li class="nav-item">
              <a href="../privacy.php" class="nav-link">Privacy</a>
            </li>
            <li class="nav-item">
              <a href="../terms.php" class="nav-link">Terms</a>
            </li>
            <li class="nav-item">
              <a href="../about.php" class="nav-link">About</a>
            </li>
            <li class="nav-item">
              <a href="../contact.php" class="nav-link">Contact</a>
            </li>
          </ul>
        </div>
        <!-- az-header-menu -->
        <div class="az-header-right">
        
          <div class="dropdown az-profile-menu">
            <a href="#" class="az-img-user"
              ><img
                src="./assets/user.jpg"
                alt=""
            /></a>
            <div class="dropdown-menu">
              <div class="az-dropdown-header d-sm-none">
                <a href="#" class="az-header-arrow"
                  ><i class="icon ion-md-arrow-back"></i
                ></a>
              </div>
              <div class="az-header-profile">
                <div class="az-img-user">
                  <img
                    src="./assets/user.jpg"
                    alt=""
                  />
                </div>
                <!-- az-img-user -->
                <h6><?php echo $_SESSION['username'] ?></h6>
                
              </div>
              <!-- az-header-profile -->

              <a href="#" class="dropdown-item"
                ><i class="typcn typcn-user-outline"></i> My Profile</a
              >
              <a href="#" class="dropdown-item"
                ><i class="typcn typcn-edit"></i> Edit Profile</a
              >
              <a href="#" class="dropdown-item"
                ><i class="typcn typcn-time"></i> Activity Logs</a
              >
              <a href="#" class="dropdown-item"
                ><i class="typcn typcn-cog-outline"></i> Account Settings</a
              >

              <a href="../includes/logout.php" class="dropdown-item"
                ><i class="typcn typcn-power-outline"></i> Sign Out</a
              >
            </div>
            <!-- dropdown-menu -->
          </div>
        </div>
        <!-- az-header-right -->
      </div>
      <!-- container -->
    </div>
    <!-- az-header -->