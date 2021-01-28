<?php
  include_once 'header.inc.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: ../index.php");
    die();
  }

  $table=$_POST['table'];

  $sql = "SELECT *
  FROM $table;";

  $result = mysqli_query($conn, $sql);
  $resultCheck = mysqli_num_rows($result);

  switch ($table) {
    case 'audience':
    if($resultCheck > 0)
    {
      echo "<caption>Display " . $table . " table.</caption>";
      echo "<table>";
      echo "<tr>";
      echo "<th>Proposal Title</th>";
      echo "<th>Audience Type</th>";
      echo "</tr>";
      while ($row = mysqli_fetch_array($result))
      {
        echo "<tr>";
        echo "<td>" . $row[0] . "</td>";
        echo "<td>" . $row[1] . "</td>";
        echo "</tr>";
      }
      echo "</table>";
    }
      break;

      case 'employers':
      if($resultCheck > 0)
      {
        echo "<caption>Display " . $table . " table.</caption>";
        echo "<table>";
        echo "<tr>";
        echo "<th>Emp ID</th>";
        echo "<th>Emp Name</th>";
        echo "<th>Org ID</th>";
        echo "</tr>";
        while ($row = mysqli_fetch_array($result))
        {
          echo "<tr>";
          echo "<td>" . $row[0] . "</td>";
          echo "<td>" . $row[1] . "</td>";
          echo "<td>" . $row[2] . "</td>";
          echo "</tr>";
        }
        echo "</table>";
      }
        break;

        case 'formats':
        if($resultCheck > 0)
        {
          echo "<caption>Display " . $table . " table.</caption>";
          echo "<table>";
          echo "<tr>";
          echo "<th>Format ID</th>";
          echo "<th>Format Name</th>";
          echo "<th>Format Length (Mins)</th>";
          echo "</tr>";
          while ($row = mysqli_fetch_array($result))
          {
            echo "<tr>";
            echo "<td>" . $row[0] . "</td>";
            echo "<td>" . $row[1] . "</td>";
            echo "<td>" . $row[2] . "</td>";
            echo "</tr>";
          }
          echo "</table>";
        }
          break;

          case 'jobs':
          if($resultCheck > 0)
          {
            echo "<caption>Display " . $table . " table.</caption>";
            echo "<table>";
            echo "<tr>";
            echo "<th>Job ID</th>";
            echo "<th>Job Title</th>";
            echo "</tr>";
            while ($row = mysqli_fetch_array($result))
            {
              echo "<tr>";
              echo "<td>" . $row[0] . "</td>";
              echo "<td>" . $row[1] . "</td>";
              echo "</tr>";
            }
            echo "</table>";
          }
            break;

            case 'organizations':
            if($resultCheck > 0)
            {
              echo "<caption>Display " . $table . " table.</caption>";
              echo "<table>";
              echo "<tr>";
              echo "<th>Org ID</th>";
              echo "<th>Org Type</th>";
              echo "</tr>";
              while ($row = mysqli_fetch_array($result))
              {
                echo "<tr>";
                echo "<td>" . $row[0] . "</td>";
                echo "<td>" . $row[1] . "</td>";
                echo "</tr>";
              }
              echo "</table>";
            }
              break;

              case 'presenters':
              if($resultCheck > 0)
              {
                echo "<caption>Display " . $table . " table.</caption>";
                echo "<table>";
                echo "<tr>";
                echo "<th>Presenter ID</th>";
                echo "<th>First Name</th>";
                echo "<th>Middle Name</th>";
                echo "<th>Last Name</th>";
                echo "<th>Email</th>";
                echo "<th>Bio</th>";
                echo "</tr>";
                while ($row = mysqli_fetch_array($result))
                {
                  echo "<tr>";
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td>";
                  echo "<td>" . $row[2] . "</td>";
                  echo "<td>" . $row[3] . "</td>";
                  echo "<td>" . $row[4] . "</td>";
                  echo "<td>" . $row[5] . "</td>";
                  echo "</tr>";
                }
                echo "</table>";
              }
                break;

                case 'presenters_jobs':
                if($resultCheck > 0)
                {
                  echo "<caption>Display " . $table . " table.</caption>";
                  echo "<table>";
                  echo "<tr>";
                  echo "<th>Job ID</th>";
                  echo "<th>Presenter ID</th>";
                  echo "</tr>";
                  while ($row = mysqli_fetch_array($result))
                  {
                    echo "<tr>";
                    echo "<td>" . $row[0] . "</td>";
                    echo "<td>" . $row[1] . "</td>";
                    echo "</tr>";
                  }
                  echo "</table>";
                }
                  break;

                  case 'presenter_employers':
                  if($resultCheck > 0)
                  {
                    echo "<caption>Display " . $table . " table.</caption>";
                    echo "<table>";
                    echo "<tr>";
                    echo "<th>Presenter ID</th>";
                    echo "<th>Emp ID</th>";
                    echo "</tr>";
                    while ($row = mysqli_fetch_array($result))
                    {
                      echo "<tr>";
                      echo "<td>" . $row[0] . "</td>";
                      echo "<td>" . $row[1] . "</td>";
                      echo "</tr>";
                    }
                    echo "</table>";
                  }
                    break;

                    case 'proposals':
                    if($resultCheck > 0)
                    {
                      echo "<caption>Display " . $table . " table.</caption>";
                      echo "<table>";
                      echo "<tr>";
                      echo "<th>Proposal ID</th>";
                      echo "<th>Proposal Title</th>";
                      echo "<th>Makerspace Student Assistant</th>";
                      echo "<th>Format ID</th>";
                      echo "<th>Timestamp</th>";
                      echo "<th>Average Score</th>";
                      echo "<th>Description</th>";
                      echo "<th>Outcomes</th>";
                      echo "<th>Participation</th>";
                      echo "<th>Expertise</th>";
                      echo "<th>Conference Year</th>";
                      echo "</tr>";
                      while ($row = mysqli_fetch_array($result))
                      {
                        echo "<tr>";
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
                    }
                      break;

                      case 'proposal_audience':
                      if($resultCheck > 0)
                      {
                        echo "<caption>Display " . $table . " table.</caption>";
                        echo "<table>";
                        echo "<tr>";
                        echo "<th>Proposal ID</th>";
                        echo "<th>Audience ID</th>";
                        echo "</tr>";
                        while ($row = mysqli_fetch_array($result))
                        {
                          echo "<tr>";
                          echo "<td>" . $row[0] . "</td>";
                          echo "<td>" . $row[1] . "</td>";
                          echo "</tr>";
                        }
                        echo "</table>";
                      }
                        break;

                        case 'proposal_presenters':
                        if($resultCheck > 0)
                        {
                          echo "<caption>Display " . $table . " table.</caption>";
                          echo "<table>";
                          echo "<tr>";
                          echo "<th>Presenter ID</th>";
                          echo "<th>Primary</th>";
                          echo "<th>Proposal ID</th>";
                          echo "</tr>";
                          while ($row = mysqli_fetch_array($result))
                          {
                            echo "<tr>";
                            echo "<td>" . $row[0] . "</td>";
                            echo "<td>" . $row[1] . "</td>";
                            echo "<td>" . $row[2] . "</td>";
                            echo "</tr>";
                          }
                          echo "</table>";
                        }
                          break;

                          case 'proposal_topics':
                          if($resultCheck > 0)
                          {
                            echo "<caption>Display " . $table . " table.</caption>";
                            echo "<table>";
                            echo "<tr>";
                            echo "<th>Proposal ID</th>";
                            echo "<th>Topic ID</th>";
                            echo "</tr>";
                            while ($row = mysqli_fetch_array($result))
                            {
                              echo "<tr>";
                              echo "<td>" . $row[0] . "</td>";
                              echo "<td>" . $row[1] . "</td>";
                              echo "</tr>";
                            }
                            echo "</table>";
                          }
                            break;

                            case 'topics':
                            if($resultCheck > 0)
                            {
                              echo "<caption>Display " . $table . " table.</caption>";
                              echo "<table>";
                              echo "<tr>";
                              echo "<th>Topic ID</th>";
                              echo "<th>Topic Type</th>";
                              echo "</tr>";
                              while ($row = mysqli_fetch_array($result))
                              {
                                echo "<tr>";
                                echo "<td>" . $row[0] . "</td>";
                                echo "<td>" . $row[1] . "</td>";
                                echo "</tr>";
                              }
                              echo "</table>";
                            }
                              break;

                              default:
                              echo "Select a table";
                              break;
  }

  ?>

</body>
</html>
