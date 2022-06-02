<?php
ob_start();
// include header.php file
include ('header.php');
?>

<?php

/*  include cart items if it is not empty */
count($product->getData('cart')) ? include ('Template/_cart-template.php') :  include ('Template/notFound/_cart_not_found.php');
/*  include cart items if it is not empty */


// include Apple watch file
include ('Template/_apple-watch.php');
// include Apple watch file

?>

<?php
// include footer.php file
include ('footer.php');
?>
