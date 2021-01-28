<?php
  include_once 'header.inc.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: ../index.php");
    die();
  }

  $proposal=$_POST['proposal'];
  $format=$_POST['format'];
  $stuAssist=$_POST['stuAssist'];
  $timestamp=$_POST['timestamp'];
  $score=$_POST['score'];
  $desc=$_POST['desc'];
  $outcomes=$_POST['outcomes'];
  $participation=$_POST['participation'];
  $expertise=$_POST['expertise'];
  $year=$_POST['year'];

  if(count($_POST))
  {
  	$len = count($_POST['first']);
  	for ($i=0; $i < $len; $i++)
  	{
      $first=$_POST['first'][$i];
      $middle=$_POST['middle'][$i];
      $last=$_POST['last'][$i];
      $email=$_POST['email'][$i];
      $bio=$_POST['bio'][$i];
  		$primary=$_POST['primary'][$i];
  		$job=$_POST['job'][$i];
  		$employer=$_POST['employer'][$i];


      $sql = "INSERT INTO presenters (FirstName, MiddleName, LastName, Email, Bio)
      VALUES ('$first', '$middle', '$last', '$email', '$bio');";

      if (mysqli_query($conn, $sql)) {
        echo "New row created successfully in presenters table <br>";
      }
      else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }

      $sql2 = "SELECT jobs.JobTitle
      FROM jobs
      WHERE JobTitle = '$job';";

      // check if job title is already in database
      $result2 = mysqli_query($conn, $sql2);
      $resultCheck2 = mysqli_num_rows($result2);
      if($resultCheck2 > 0)
      {
        echo "The job is already in the database. <br>";
      }

      else
      {
        $sql3 = "INSERT INTO jobs (JobTitle)
        VALUES ('$job');";

        if (mysqli_query($conn, $sql3)) {
          echo "New row created successfully in jobs table <br>";
        }
        else {
          echo "Error: " . $sql3 . "<br>" . mysqli_error($conn);
        }
      }

      $sql4 = "INSERT INTO presenters_jobs (JobID, PresenterID)
      VALUES ((SELECT JobID FROM jobs WHERE JobTitle = '$job'),
      (SELECT PresenterID FROM presenters WHERE FirstName = '$first' AND LastName = '$last' ));";

      if (mysqli_query($conn, $sql4)) {
        echo "New row created successfully in presenters_jobs table <br>";
      }
      else {
        echo "Error: " . $sql4 . "<br>" . mysqli_error($conn);
      }

      $sql5 = "INSERT INTO presenter_employers (PresenterID, EmpID)
      VALUES ((SELECT PresenterID FROM presenters WHERE FirstName = '$first' AND LastName = '$last'),
      (SELECT EmpID FROM employers WHERE EmpName = '$employer'));";

      if (mysqli_query($conn, $sql5)) {
        echo "New row created successfully in presenter_employers table <br>";
      }
      else {
        echo "Error: " . $sql5 . "<br>" . mysqli_error($conn);
      }

      $sql6 = "INSERT IGNORE INTO proposals (ProposalTitle, MakerStuAssist, FormatID, Timestamp, AvgScore, Description,
      Outcomes, Participation, Expertise, Year)
      SELECT '$proposal', '$stuAssist', (SELECT FormatID FROM formats WHERE FormatName ='$format'),
      '$timestamp', '$score', '$desc', '$outcomes', '$participation', '$expertise', '$year'
      WHERE NOT EXISTS (SELECT ProposalTitle, Year FROM proposals WHERE ProposalTitle = '$proposal' AND Year = '$year');";

      if (mysqli_query($conn, $sql6)) {
        echo "New row created successfully in proposals table <br>";
      }
      else {
        echo "Error: " . $sql6 . "<br>" . mysqli_error($conn);
      }

      $sql7 = "INSERT INTO proposal_presenters (PresenterID, PrimaryPres, ProposalID)
      VALUES ((SELECT PresenterID FROM presenters WHERE FirstName = '$first' AND LastName = '$last'),
      '$primary', (SELECT ProposalID FROM proposals WHERE ProposalTitle = '$proposal'));";

      if (mysqli_query($conn, $sql7)) {
        echo "New row created successfully in proposal_presenters table <br>";
      }
      else {
        echo "Error: " . $sql7 . "<br>" . mysqli_error($conn);
      }
  }

  $len2 = count($_POST['audience']);
  for ($i=0; $i < $len2; $i++)
  {
    $audience=$_POST['audience'][$i];

    $sql8 = "SELECT audience.AudienceType
    FROM audience
    WHERE AudienceType = '$audience';";

    // check if audience type is already in database
    $result8 = mysqli_query($conn, $sql8);
    $resultCheck8 = mysqli_num_rows($result8);
    if($resultCheck8 > 0)
    {
      echo "The audience type is already in the database. <br>";
    }

    else
    {
      $sql9 = "INSERT INTO audience (AudienceType)
      VALUES ('$audience');";

      if (mysqli_query($conn, $sql9)) {
        echo "New row created successfully in audience table <br>";
      }
      else {
        echo "Error: " . $sql9 . "<br>" . mysqli_error($conn);
      }
    }

    $sql10 = "INSERT INTO proposal_audience (ProposalID, AudienceID)
    VALUES ((SELECT ProposalID FROM proposals WHERE ProposalTitle = '$proposal'),
    (SELECT AudienceID FROM audience WHERE AudienceType = '$audience'));";

    if (mysqli_query($conn, $sql10)) {
      echo "New row created successfully in proposal_audience table <br>";
    }
    else {
      echo "Error: " . $sql10 . "<br>" . mysqli_error($conn);
    }
  }

  $len3 = count($_POST['topic']);
  for ($i=0; $i < $len3; $i++)
  {
    $topic=$_POST['topic'][$i];

    $sql11 = "SELECT topics.TopicType
    FROM topics
    WHERE TopicType = '$topic';";

    // check if topic type is already in database
    $result11 = mysqli_query($conn, $sql11);
    $resultCheck11 = mysqli_num_rows($result11);
    if($resultCheck11 > 0)
    {
      echo "The topic type is already in the database. <br>";
    }

    else
    {
      $sql12 = "INSERT INTO topics (TopicType)
      VALUES ('$topic');";

      if (mysqli_query($conn, $sql12)) {
        echo "New row created successfully in topics table <br>";
      }
      else {
        echo "Error: " . $sql12 . "<br>" . mysqli_error($conn);
      }
    }

    $sql13 = "INSERT INTO proposal_topics (ProposalID, TopicID)
    VALUES ((SELECT ProposalID FROM proposals WHERE ProposalTitle = '$proposal'),
    (SELECT TopicID FROM topics WHERE TopicType = '$topic'));";

    if (mysqli_query($conn, $sql13)) {
      echo "New row created successfully in proposal_topics table <br>";
    }
    else {
      echo "Error: " . $sql13 . "<br>" . mysqli_error($conn);
    }
  }

  }
  mysqli_close($conn);
