<?php
  include_once 'header.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: index.php");
    die();
  }
?>

<h2>Search for a proposal based on their intended audience.</h2>

<form action="includes/audienceResults.inc.php" method="POST">

  <select name="audience">
    <?php
    $sql = "SELECT audience.AudienceType
    FROM audience;";

    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);
    if($resultCheck > 0)
    {
      while ($row = mysqli_fetch_assoc($result))
      {
        echo "<option value='" . $row['AudienceType'] . "'>" . $row['AudienceType'] . "</option>";
      }
    }
     ?>
  </select>

  <select name="year">
    <?php
    $sql = "SELECT DISTINCT proposals.Year
    FROM proposals;";

    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);
    if($resultCheck > 0)
    {
      echo "<option value='Any'>Any</option>";
      while ($row = mysqli_fetch_assoc($result))
      {
        echo "<option value='" . $row['Year'] . "'>" . $row['Year'] . "</option>";
      }
    }
     ?>
  </select>

<button type="submit" name="submit">Run Query</button>
</form>

</body>
</html>
