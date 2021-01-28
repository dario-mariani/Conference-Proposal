<?php
  include_once 'header.inc.php';
  if (!isset($_SESSION["useruid"])) {
  header("location: ../index.php");
    die();
  }

    $topics=$_POST['topics'];
    $year=$_POST['year'];
    $count = 0;

    if ($year == 'Any') {
      $sql = "SELECT proposals.ProposalTitle, topics.TopicType, ROUND(proposals.AvgScore,2), proposals.Year
      FROM topics INNER JOIN
      (proposals INNER JOIN proposal_topics ON proposals.ProposalID = proposal_topics.ProposalID)
      ON topics.TopicID = proposal_topics.TopicID
      WHERE TopicType = '$topics'
      ORDER BY AvgScore DESC;";
    }

    else {
      $sql = "SELECT proposals.ProposalTitle, topics.TopicType, ROUND(proposals.AvgScore,2), proposals.Year
      FROM topics INNER JOIN
      (proposals INNER JOIN proposal_topics ON proposals.ProposalID = proposal_topics.ProposalID)
      ON topics.TopicID = proposal_topics.TopicID
      WHERE TopicType = '$topics' AND Year = '$year'
      ORDER BY AvgScore DESC;";
    }

    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);
    if($resultCheck > 0)
    {
      echo "<caption>Display proposals by topics</caption>";
      echo "<table>";
      echo "<tr>";
      echo "<th>Number</th>";
      echo "<th>Proposal Title</th>";
      echo "<th>Topic</th>";
      echo "<th>Avg Score</th>";
      echo "</tr>";
      while ($row = mysqli_fetch_array($result))
      {
        $count++;
        echo "<tr>";
        echo "<td>" . $count . "</td>";
        echo "<td>" . $row[0] . "</td>";
        echo "<td>" . $row[1] . "</td>";
        echo "<td>" . $row[2] . "</td>";
        echo "</tr>";
      }
      echo "</table>";
      echo "<h1>The number of rows displayed is " . $count . "</h1>";
    }
    ?>

</body>
</html>
