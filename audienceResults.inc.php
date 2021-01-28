<?php
  include_once 'header.inc.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: ../index.php");
    die();
  }

  $audience=$_POST['audience'];
  $year=$_POST['year'];
  $count = 0;

  if ($year == 'Any') {
    $sql = "SELECT proposals.ProposalTitle, audience.AudienceType, ROUND(proposals.AvgScore,2), proposals.Year
    FROM (proposals INNER JOIN proposal_audience ON proposals.ProposalID = proposal_audience.ProposalID)
    INNER JOIN audience ON proposal_audience.AudienceID = audience.AudienceID
    WHERE AudienceType = '$audience'
    ORDER BY AvgScore DESC;";
  }

  else {
    $sql = "SELECT proposals.ProposalTitle, audience.AudienceType, ROUND(proposals.AvgScore,2), proposals.Year
    FROM (proposals INNER JOIN proposal_audience ON proposals.ProposalID = proposal_audience.ProposalID)
    INNER JOIN audience ON proposal_audience.AudienceID = audience.AudienceID
    WHERE AudienceType = '$audience' AND Year = '$year'
    ORDER BY AvgScore DESC;";
  }

  $result = mysqli_query($conn, $sql);
  $resultCheck = mysqli_num_rows($result);
  if($resultCheck > 0)
  {
    echo "<caption>Display proposals by audience</caption>";
    echo "<table>";
    echo "<tr>";
    echo "<th>Number</th>";
    echo "<th>Proposal Title</th>";
    echo "<th>Audience Type</th>";
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
      echo "</tr>";
    }
    echo "</table>";
    echo "<h1>The number of rows displayed is " . $count . "</h1>";
  }
  ?>

</body>
</html>
