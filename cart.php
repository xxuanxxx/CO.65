<?php include('connection.php');?>

<!DOCTYPE html>
<html>
<html lang="en">
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Cart</title>
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <link href='cart.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
</head>

<body>
    <!--Header-->
    <?php include('header.php');?>

    <div class="content">
        <div class="details-column">
            <div class="row" id="title_row">
                <div class="col" id="title"><h4>Shopping Cart</h4></div>
                <div class="col" id="num_of_items">
                    <?php
                    // Fetch the total number of items in the cart
                    $result = mysqli_query($conn, "SELECT COUNT(*) AS total_items FROM cart");
                    $row = mysqli_fetch_assoc($result);
                    echo $row['total_items'] . " items";
                    ?>
                </div>
            </div>
            <div class="row" id="item_row">
                <?php
                // Fetch cart items from the database
                $query = "SELECT * FROM cart";
                $result = mysqli_query($conn, $query);

                while ($row = mysqli_fetch_assoc($result)) {
                    echo "
                        <div class='col' id='image'><img src='" . $row['image_url'] . "' alt='Item Image' class='img-fluid'></div>
                        <div class='col'>" . $row['item_name'] . "</div>
                        <div class='col' id='adddelete'>
                            <a href='update_cart.php?action=decrease&id=" . $row['id'] . "'>-</a>
                            <span class='border'>" . $row['quantity'] . "</span>
                            <a href='update_cart.php?action=increase&id=" . $row['id'] . "'>+</a>
                        </div>
                        <div class='col'>RM " . $row['price'] . "</div>
                    </div>";
                }
                ?>
                <!--<div class="col" id="image">Image</div>
                <div class="col">Name</div>
                <div class="col" id="adddelete">
                    <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                </div>-->
            </div>
        </div>
        <div class="summary-column">
            <h5>Summary</h5>
            <?php
            // Calculate the total price
            $result = mysqli_query($conn, "SELECT SUM(price * quantity) AS total_price FROM cart");
            $row = mysqli_fetch_assoc($result);
            echo "<p>Total: RM " . $row['total_price'] . "</p>";
            ?>
            <button class="btn btn-primary">Checkout</button>
        </div>
    </div>

    <!--Footer-->
    <?php include('footer.php');?>
</body>