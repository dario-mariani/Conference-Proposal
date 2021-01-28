<?php
  session_start(); // part of login system
  include_once 'includes/dbh.inc.php';
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Conference Proposal Management</title>
  <script src="includes/jquery-3.5.1.js"></script>
  <script src="includes/main.js"></script>
  <link rel="stylesheet" href="includes/style.inc.css">
</head>
<body>
  <h1>Conference Proposal Management System</h1>
  <nav>
    <ul>
      <?php
      if (isset($_SESSION["useruid"])) {
        echo "<li><a href = 'home.php'>Home</a></li>";
        echo "<li><a href = 'selectFormat.php'>Format Query</a></li>";
        echo "<li><a href = 'selectAudience.php'>Audience Query</a></li>";
        echo "<li><a href = 'selectTopic.php'>Topics Query</a></li>";
        echo "<li><a href = 'selectMinScore.php'>Score Query</a></li>";
        echo "<li><a href = 'selectPresenter.php'>Presenter Query</a></li>";
        echo "<li><a href = 'selectProposal.php'>Proposal Query</a></li>";
        echo "<li><a href = 'viewTables.php'>View Database Tables</a></li>";
        echo "<li><a href = 'newEntry.php'>New Entry</a></li>";
        echo "<li><a href = 'includes/logout.inc.php'>Log Out</a></li>";
      }
       ?>
    </ul>
  </nav>
