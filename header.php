<!DOCTYPE html>
<html>
<html lang="en">
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <title>Header</title>
</head>

<body>
    <header class="main-header">
        <div class="nav-left">
            <img src="image/logo2.png" alt="CO.65">
        </div>

        <div class="nav-center">
            <a href="index.php">HOME</a>
            <a href="menu.php">MENU</a>
            <a href="#about">ABOUT US</a>
        </div>

        <div class="nav-right">
            <!-- If NOT logged in -->
            <a href="login.html">Login</a>

            <!-- If LOGGED in (replace above 2) -->
            <!-- <div class="user-info">
                <div class="avatar"><i class="fas fa-user"></i></div>
                <span>kenneth</span>
                <a href="#">Logout</a>
            </div> -->

            <a href="login.html" class="cart-btn">
                <i class="fas fa-shopping-cart"></i>
            </a>
        </div>
    </header>
</body>

<style>
    *
    {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body
    {
        overflow-x: hidden;
    }
    .main-header
    {
        position: sticky;
        top: 0;
        width: 100vw;
        display: grid;
        grid-template-columns: 25% auto 25%;
        align-items: center;
        padding: 5px 30px;
        background-color: white;
        font-family: 'Poppins', sans-serif;
    }

    img
    {
        height: 60px;
    }

    .nav-center
    {
        display: flex;
        gap: 35px;
        justify-content: center;
    }

    .nav-center a
    {
        color: #101010;
        font-weight: bold;
        text-decoration: none;
    }

    .nav-right
    {
        display: flex;
        justify-content: flex-end;
        align-items: center;
        gap: 15px;
    }

    .nav-right a
    {
        color: #101010;
        font-weight: bold;
        text-decoration: none;
        transition: color 0.3s ease;
    }
    
    .nav-right a:hover 
    {
        color: yellow;
        text-decoration: underline;
    }
    
    .cart-btn 
    {
        background-color: transparent;
        font-size: 15px;
        border: none;
        padding: 10px;
        cursor: pointer;
    }
</style>