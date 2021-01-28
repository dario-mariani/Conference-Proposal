<?php
  include_once 'header.inc.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: ../index.php");
    die();
  }

  $first=$_POST['first'];
  $last=$_POST['last'];
  $year=$_POST['year'];
  $count = 0;

  if($year == 'Any') {
    $sql = "SELECT proposals.ProposalTitle, presenters.FirstName, presenters.LastName,
    IF (proposal_presenters.PrimaryPres = 1, 'Yes', 'No'), ROUND(proposals.AvgScore,2), proposals.Year
    FROM (proposals INNER JOIN proposal_presenters ON proposals.ProposalID = proposal_presenters.ProposalID)
    INNER JOIN presenters ON proposal_presenters.PresenterID = presenters.PresenterID
    WHERE FirstName LIKE '%$first%' AND LastName LIKE '%$last%';";
  }

  else {
    $sql = "SELECT proposals.ProposalTitle, presenters.FirstName, presenters.LastName,
    IF (proposal_presenters.PrimaryPres = 1, 'Yes', 'No'), ROUND(proposals.AvgScore,2), proposals.Year
    FROM (proposals INNER JOIN proposal_presenters ON proposals.ProposalID = proposal_presenters.ProposalID)
    INNER JOIN presenters ON proposal_presenters.PresenterID = presenters.PresenterID
    WHERE FirstName LIKE '%$first%' AND LastName LIKE '%$last%' AND Year = '$year';";
  }


  $result = mysqli_query($conn, $sql);
  $resultCheck = mysqli_num_rows($result);
  if($resultCheck > 0)
  {
    echo "<caption>Display proposals by presenter's name</caption>";
    echo "<table>";
    echo "<tr>";
    echo "<th>Number</th>";
    echo "<th>Proposal Title</th>";
    echo "<th>First Name</th>";
    echo "<th>Last Name</th>";
    echo "<th>Primary Presenter</th>";
    echo "<th>Avg Score</th>";
    echo "<th>Conference Year</th>";
    echo "</tr>";
    while ($row = mysqli_fetch_array($result))
    {
      $count++;
      echo "<tr>";
      echo "<td>" . $count . "</td>";
      echo "<td>" . $row[0] . "</td>";
      echo "<td>" . $row[1] . "</td>";
      echo "<td>" . $row[2] . "</td>";
      echo "<td>" . $row[3] . "</td>";
      echo "<td>" . $row[4] . "</td>";
      echo "<td>" . $row[5] . "</td>";
      echo "</tr>";
    }
    echo "</table>";
    echo "<h1>The number of rows displayed is " . $count . "</h1>";
  }
  ?>

</body>
</html>
