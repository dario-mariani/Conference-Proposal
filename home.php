<?php
  include_once 'header.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: index.php");
    die();
  }
?>

  <p>This is the home page. From here you can either view the information stored in the database
  by running a query or you can enter new information into the database.</p>

</body>
</html>
