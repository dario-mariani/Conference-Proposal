<?php
  include_once 'header.inc.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: ../index.php");
    die();
  }

  $title=$_POST['title'];
  $year=$_POST['year'];
  $count = 0;

  if($year == 'Any') {
    $sql = "SELECT proposals.ProposalTitle, formats.FormatName, ROUND(proposals.AvgScore,2), proposals.Timestamp,
    presenters.FirstName, presenters.LastName, proposals.Description, proposals.Outcomes, proposals.Participation,
    proposals.Expertise, proposals.Year
    FROM ((proposals INNER JOIN proposal_presenters ON proposals.ProposalID = proposal_presenters.ProposalID)
    INNER JOIN presenters ON proposal_presenters.PresenterID = presenters.PresenterID)
    INNER JOIN formats ON proposals.FormatID = formats.FormatID
    WHERE ProposalTitle LIKE '%$title%' AND proposal_presenters.PrimaryPres;";
  }

  else {
    $sql = "SELECT proposals.ProposalTitle, formats.FormatName, ROUND(proposals.AvgScore,2), proposals.Timestamp,
    presenters.FirstName, presenters.LastName, proposals.Description, proposals.Outcomes, proposals.Participation,
    proposals.Expertise, proposals.Year
    FROM ((proposals INNER JOIN proposal_presenters ON proposals.ProposalID = proposal_presenters.ProposalID)
    INNER JOIN presenters ON proposal_presenters.PresenterID = presenters.PresenterID)
    INNER JOIN formats ON proposals.FormatID = formats.FormatID
    WHERE ProposalTitle LIKE '%$title%' AND proposal_presenters.PrimaryPres AND Year = '$year';";
  }



  $result = mysqli_query($conn, $sql);
  $resultCheck = mysqli_num_rows($result);
  if($resultCheck > 0)
  {
    echo "<caption>Display proposals by title</caption>";
    echo "<table>";
    echo "<tr>";
    echo "<th>Number</th>";
    echo "<th>Proposal Title</th>";
    echo "<th>Format</th>";
    echo "<th>Avg Score</th>";
    echo "<th>Timestamp</th>";
    echo "<th>First Name</th>";
    echo "<th>Last Name</th>";
    echo "<th>Description</th>";
    echo "<th>Outcomes</th>";
    echo "<th>Participation</th>";
    echo "<th>Expertise</th>";
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
      echo "<td>" . $row[6] . "</td>";
      echo "<td>" . $row[7] . "</td>";
      echo "<td>" . $row[8] . "</td>";
      echo "<td>" . $row[9] . "</td>";
      echo "<td>" . $row[10] . "</td>";
      echo "</tr>";
    }
    echo "</table>";
    echo "<h1>The number of rows displayed is " . $count . "</h1>";
  }
  ?>

</body>
</html>
