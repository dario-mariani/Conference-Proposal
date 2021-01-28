// javascript function needed to add additional presenters
function validate(frm)
{
	var ele = frm.elements['feedurl[]'];
	if (! ele.length)
	{
		alert(ele.value);
	}
	for(var i=0; i<ele.length; i++)
	{
		alert(ele[i].value);
	}
	return true;
}
function add_feed()
{
	var div1 = document.createElement('div');
	// Get template data
	div1.innerHTML = document.getElementById('newlinktpl').innerHTML;
	// append to our form, so that template data
	//become part of form
	document.getElementById('newlink').appendChild(div1);
}

// another function needed to add additional presenters
var ct = 1;
function new_link()
{
	ct++;
	var div1 = document.createElement('div');
	div1.id = ct;
	// link to delete extended form elements
	var delLink = '<div style="text-align:right;margin-right:65px"><a href="javascript:delIt('+ ct +')">Del</a></div>';
	div1.innerHTML = document.getElementById('newlinktpl').innerHTML + delLink;
	document.getElementById('newlink').appendChild(div1);
}

// function to delete the newly added presenters
function delIt(eleId)
{
	d = document;
	var ele = d.getElementById(eleId);
	var parentEle = d.getElementById('newlink');
	parentEle.removeChild(ele);
}


function goBack() {
  window.history.back();
}

// function to add more audience types
function add_feed()
{
	var div1 = document.createElement('div');
	// Get template data
	div1.innerHTML = document.getElementById('newaudiencetpl').innerHTML;
	// append to our form, so that template data
	//become part of form
	document.getElementById('newaudience').appendChild(div1);
}

// another function needed to add additional audience
var cta = 1;
function new_audience()
{
	cta++;
	var div1 = document.createElement('div');
	div1.id = cta;
	// link to delete extended form elements
	var delLink = '<div style="text-align:right;margin-right:65px"><a href="javascript:delItA('+ cta +')">Del</a></div>';
	div1.innerHTML = document.getElementById('newaudiencetpl').innerHTML + delLink;
	document.getElementById('newaudience').appendChild(div1);
}

// function to delete the newly added audiences
function delItA(eleId)
{
	d = document;
	var ele = d.getElementById(eleId);
	var parentEle = d.getElementById('newaudience');
	parentEle.removeChild(ele);
}


// function to add more topics
function add_feed()
{
	var div1 = document.createElement('div');
	// Get template data
	div1.innerHTML = document.getElementById('newtopictpl').innerHTML;
	// append to our form, so that template data
	//become part of form
	document.getElementById('newtopic').appendChild(div1);
}

// another function needed to add additional topics
var ctt = 1;
function new_topic()
{
	ctt++;
	var div1 = document.createElement('div');
	div1.id = ctt;
	// link to delete extended form elements
	var delLink = '<div style="text-align:right;margin-right:65px"><a href="javascript:delItT('+ ctt +')">Del</a></div>';
	div1.innerHTML = document.getElementById('newtopictpl').innerHTML + delLink;
	document.getElementById('newtopic').appendChild(div1);
}

// function to delete the newly added topics
function delItT(eleId)
{
	d = document;
	var ele = d.getElementById(eleId);
	var parentEle = d.getElementById('newtopic');
	parentEle.removeChild(ele);
}
