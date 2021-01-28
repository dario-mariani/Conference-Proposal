<?php
  include_once 'header.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: index.php");
    die();
  }
?>

<h2>Add a new entry to the database</h2>
<form method="post" action="includes/newEntry.inc.php">
<div id="newlink">
<div>
<caption>Input new presenter information</caption>
<table border=0 class="newEntries">
	<tr>
		<td> Enter first name: </td>
		<td> <input type="text" name="first[]" placeholder="First Name"> </td>
	</tr>
	<tr>
    <td> Enter middle name: </td>
		<td> <input type="text" name="middle[]" placeholder="Middle Name"> </td>
	</tr>
  <tr>
		<td> Enter last name: </td>
		<td> <input type="text" name="last[]" placeholder="Last Name"> </td>
	</tr>
  <tr>
		<td> Enter email: </td>
		<td> <input type="text" name="email[]" placeholder="Email"> </td>
	</tr>
  <tr>
		<td> Enter Biography: </td>
		<td> <input type="text" name="bio[]" placeholder="Biography"> </td>
	</tr>
  <tr>
		<td> Select if you are primary presenter: </td>
		<td> <select name="primary[]">
      <option value='1'>Yes</option>
      <option value='0'>No</option>
    </td>
	</tr>
  <tr>
		<td> Select or add a job title: </td>
		<td> <input type="text" name="job[]" list="job[]">
      <datalist id="job[]">
        <?php
        $sql = "SELECT jobs.JobTitle
        FROM jobs;";

        $result = mysqli_query($conn, $sql);
        $resultCheck = mysqli_num_rows($result);
        if($resultCheck > 0)
        {
          while ($row = mysqli_fetch_assoc($result))
          {
            echo "<option value='" . $row['JobTitle'] . "'></option>";
          }
        }
         ?>
    </datalist>
    </td>
	</tr>
  <tr>
		<td> Select employer: </td>
		<td> <select name="employer[]">
      <?php
      $sql = "SELECT employers.EmpName
      FROM employers;";

      $result = mysqli_query($conn, $sql);
      $resultCheck = mysqli_num_rows($result);
      if($resultCheck > 0)
      {
        while ($row = mysqli_fetch_assoc($result))
        {
          echo "<option value='" . $row['EmpName'] . "'>" . $row['EmpName'] . "</option>";
        }
      }
       ?>
    </select>
    </td>
	</tr>
</table>
</div>
</div>
<p id="addnew">
	<a href="javascript:new_link()" class="button">Add Additional Presenter</a>
</p>

<table class="newEntries">
  <tr>
    <td> Enter proposal title: </td>
    <td> <input type="text" name="proposal" placeholder="Title"> </td>
  </tr>
  <tr>
    <td> Are there any makerspace student assistants: </td>
    <td> <select name="stuAssist">
      <option value='1'> Yes </option>
      <option value='0'> No </option>
    </td>
  </tr>
  <tr>
    <td> Enter format: </td>
    <td> <select name="format">
      <?php
      $sql = "SELECT formats.FormatName
      FROM formats;";

      $result = mysqli_query($conn, $sql);
      $resultCheck = mysqli_num_rows($result);
      if($resultCheck > 0)
      {
        while ($row = mysqli_fetch_assoc($result))
        {
          echo "<option value='" . $row['FormatName'] . "'>" . $row['FormatName'] . "</option>";
        }
      }
       ?>
    </select>
    </td>
  </tr>
  <tr>
    <td> Enter a timestamp: </td>
    <td> <input type="text" name="timestamp"> </td>
  </tr>
  <tr>
    <td> Enter a score: </td>
    <td> <input type="number" name="score"> </td>
  </tr>
  <tr>
    <td> Enter a description of the proposal: </td>
    <td> <textarea name="desc" cols="50" rows="5"></textarea> </td>
  </tr>
  <tr>
    <td> Enter the outcomes of the proposal: </td>
    <td> <textarea name="outcomes" cols="50" rows="5"></textarea> </td>
  </tr>
  <tr>
    <td> Enter how the audience will participate: </td>
    <td> <textarea name="participation" cols="50" rows="5"></textarea> </td>
  </tr>
  <tr>
    <td> Enter the presenters' expertise on the subject: </td>
    <td> <textarea name="expertise" cols="50" rows="5"></textarea> </td>
  </tr>
  <tr>
    <td> Enter the conference year: </td>
    <td> <input type="number" name="year"> </td>
  </tr>
</table>

<table class="newEntries">
  <div id="newaudience">
  <div>
    <tr>
  		<td> Select or add an audience group: </td>
  		<td> <input type="text" name="audience[]" list="audience">
        <datalist id="audience">
          <?php
          $sql = "SELECT audience.AudienceType
          FROM audience;";

          $result = mysqli_query($conn, $sql);
          $resultCheck = mysqli_num_rows($result);
          if($resultCheck > 0)
          {
            while ($row = mysqli_fetch_assoc($result))
            {
              echo "<option value='" . $row['AudienceType'] . "'></option>";
            }
          }
           ?>
      </datalist>
      </td>
  	</tr>
</table>
</div>
</div>
<p id="addaudience">
	<a href="javascript:new_audience()" class="button">Add Additional Audience</a>
</p>

<table class="newEntries">
  <div id="newtopic">
  <div>
    <tr>
      <td> Select or add proposal topic: </td>
  		<td> <input type="text" name="topic[]" list="topic">
        <datalist id="topic">
          <?php
          $sql = "SELECT topics.TopicType
          FROM topics;";

          $result = mysqli_query($conn, $sql);
          $resultCheck = mysqli_num_rows($result);
          if($resultCheck > 0)
          {
            while ($row = mysqli_fetch_assoc($result))
            {
              echo "<option value='" . $row['TopicType'] . "'></option>";
            }
          }
           ?>
      </datalist>
      </td>
  	</tr>
</table>
</div>
</div>
<p id="addtopic">
<a href="javascript:new_topic()" class="button">Add Additional Topic</a>
</p>

<p>
  <br>
  <input type="submit" name="submit1">
  <input type="reset" name="reset1">
</p>
</form>

<!-- Template -->
<div id="newlinktpl" style="display:none">
  <br>
<div>
<caption>Input new presenter information</caption>
<table border=0 class="newEntries">
  <tr>
		<td> Enter first name: </td>
		<td> <input type="text" name="first[]" placeholder="First Name"> </td>
	</tr>
	<tr>
    <td> Enter middle name: </td>
		<td> <input type="text" name="middle[]" placeholder="Middle Name"> </td>
	</tr>
  <tr>
		<td> Enter last name: </td>
		<td> <input type="text" name="last[]" placeholder="Last Name"> </td>
	</tr>
  <tr>
		<td> Enter email: </td>
		<td> <input type="text" name="email[]" placeholder="Email"> </td>
	</tr>
  <tr>
		<td> Enter Biography: </td>
		<td> <input type="text" name="bio[]" placeholder="Biography"> </td>
	</tr>
  <tr>
		<td> Select if you are primary presenter: </td>
		<td> <select name="primary[]">
      <option value='0'>No</option>
    </td>
	</tr>
  <tr>
		<td> Select job title: </td>
		<td> <input type="text" name="job[]" list="job[]">
      <datalist id="job[]">
        <?php
        $sql = "SELECT jobs.JobTitle
        FROM jobs;";

        $result = mysqli_query($conn, $sql);
        $resultCheck = mysqli_num_rows($result);
        if($resultCheck > 0)
        {
          while ($row = mysqli_fetch_assoc($result))
          {
            echo "<option value='" . $row['JobTitle'] . "'></option>";
          }
        }
         ?>
    </datalist>
    </td>
	</tr>
  <tr>
		<td> Select employer: </td>
		<td> <select name="employer[]">
      <?php
      $sql = "SELECT employers.EmpName
      FROM employers;";

      $result = mysqli_query($conn, $sql);
      $resultCheck = mysqli_num_rows($result);
      if($resultCheck > 0)
      {
        while ($row = mysqli_fetch_assoc($result))
        {
          echo "<option value='" . $row['EmpName'] . "'>" . $row['EmpName'] . "</option>";
        }
      }
       ?>
    </select>
    </td>
	</tr>
</table>
</div>
</div>


  <div id="newaudiencetpl" style="display:none">
    <br>
  <div>
    <table class="newEntries">
    <tr>
  		<td> Select or add an audience group: </td>
  		<td> <input type="text" name="audience[]" list="audience">
        <datalist id="audience">
          <?php
          $sql = "SELECT audience.AudienceType
          FROM audience;";

          $result = mysqli_query($conn, $sql);
          $resultCheck = mysqli_num_rows($result);
          if($resultCheck > 0)
          {
            while ($row = mysqli_fetch_assoc($result))
            {
              echo "<option value='" . $row['AudienceType'] . "'></option>";
            }
          }
           ?>
      </datalist>
      </td>
  	</tr>
</table>
</div>
</div>


  <div id="newtopictpl" style="display:none">
  <div>
  <table class="newEntries">
    <tr>
      <td> Select or add proposal topic: </td>
  		<td> <input type="text" name="topic[]" list="topic">
        <datalist id="topic">
          <?php
          $sql = "SELECT topics.TopicType
          FROM topics;";

          $result = mysqli_query($conn, $sql);
          $resultCheck = mysqli_num_rows($result);
          if($resultCheck > 0)
          {
            while ($row = mysqli_fetch_assoc($result))
            {
              echo "<option value='" . $row['TopicType'] . "'></option>";
            }
          }
           ?>
      </datalist>
      </td>
  	</tr>
</table>
</div>
</div>

</body>

</html>
