<?php
  include_once 'header.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: index.php");
    die();
  }
?>

<h2>Select the table you want to view.</h2>

<form action="includes/tableResults.inc.php" method="POST">
<select name="table">
<option value="audience">Audience</option>
<option value="employers">Employers</option>
<option value="formats">Formats</option>
<option value="jobs">Jobs</option>
<option value="organizations">Organizations</option>
<option value="presenters">Presenters</option>
<option value="presenters_jobs">Presenters_Jobs</option>
<option value="presenter_employers">Presenter_Employers</option>
<option value="proposals">Proposals</option>
<option value="proposal_audience">Proposal_Audience</option>
<option value="proposal_presenters">Proposal_Presenters</option>
<option value="proposal_topics">Proposal_Topics</option>
<option value="topics">Topics</option>
</select>
<button type="submit" name="submit">Run Query</button>
</form>

</body>
</html>
