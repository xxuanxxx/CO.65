<!DOCTYPE html>
<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <header class="main-header">
        <div class="nav-left">
            <a href="index.html">Home</a>
            <a href="#about">About</a>
        </div>
        
        <div class="nav-center">
        <div class="logo">
            <img src="" alt="Co.65" />
            <span></span>
        </div>
        </div>

    <div class="right-nav">
        <div class="dropdown">
        <a href="#" class="menu-link">Menu ▾</a>
        <div class="dropdown-content">
            <!--Jump to Menu page, not dessert and drinks-->
            <a href="dessert.html">Dessert</a>
            <a href="drinks.html">Drinks</a>
        </div>
        </div>

        <div class="left-header">
        <!-- If NOT logged in -->
        <a href="login.html"class="auth-link">Login</a>
        <a href="signup.html"class="auth-link">Sign Up</a>

        <!-- If LOGGED in (replace above 2) -->
        <!-- <div class="user-info">
            <div class="avatar"><i class="fas fa-user"></i></div>
            <span>kenneth</span>
            <a href="#">Logout</a>
        </div> -->

        <button class="cart-btn">
            <i class="shopping-cart"></i>
        </button>
        </div>
    </div>
    </header>
</body>

<style>
    .main-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: #2319dc;
    padding: 10px 20px;
    position: sticky;
    top: 0;
    z-index: 1000;
  }
  
  /* Logo left */
  .logo {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: flex-start;
  }
  
  .logo img {
    height: 50px;
  }
  
  /* Home and About center */
  .nav-center {
    flex: 1;
    display: flex;
    justify-content: center;
    gap: 20px;
  }
  
  .nav-center a {
    color: #ffffff;
    text-decoration: none;
    font-weight: bold;
  }
  
  /* Right side */
  .right-nav {
    flex: 1;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    gap: 15px;
  }
  
  .dropdown {
    position: relative;
  }
  
  .menu-link {
    color: #ffffff;
    text-decoration: none;
    font-weight: bold;
  }
  
  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #ffffff;
    min-width: 160px;
    box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
  }
  
  .dropdown-content a {
    color: #333333;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }
  
  .dropdown:hover .dropdown-content {
    display: block;
  }
  
  .auth-link {
    color: white;
    font-weight: bold;
    margin-left: 10px;
    text-decoration: none;
    transition: color 0.3s ease;
  }
  
  .auth-link:hover {
    color: yellow;
    text-decoration: underline;
  }
  
  .cart-btn {
    background-color: #ffffff;
    border: none;
    padding: 10px;
    cursor: pointer;
  }
  
</style>