<html>
<head>
<style type="text/css">
.ytThumb {
	margin:5px;
        margin-right:20px;
        margin-left:22px;
};
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/
jquery.min.js"></script>

<script type="text/javascript">

$("document").ready(function() {

	var linkToYouTube = "http://www.youtube.com/embed/";
	
	// When a img of class ytThumb is clicked call the function changeTheVideo
	$('.ytThumb').bind('click',changeTheVideo);
	
	function changeTheVideo() {
		// Gets the value for alt for the thumbnail that was clicked
		var videoCode = $(this).attr('alt');
		
		// Saves the url for the video that I want to display in the iframe
		var newVideoLoc = linkToYouTube + videoCode + "?wmode=transparent";
		
		// Assigns the YouTube URL to the src for the video in the iframe
		$('#ytVideo').attr("src", newVideoLoc);
	}

});
</script>

</head>
<body>

<!-- FB.init initializes the JavaScript SDK with your app id, allowing you to then make calls against the Facebook API -->
<div id="fb-root"></div>
<script src="http://connect.facebook.net/en_US/all.js" charset="utf-8"></script>
<script>
FB.init({appId: '147514068671652', 
status: true, // Check login status
cookie: true, // Enables cookies so server can access the session
xfbml: true // Parse XFBML
});
</script>

<!-- Allows a facebook user to bookmark your tab -->
<fb:bookmark></fb:bookmark> 

<h2>Top Videos</h2>
<div id="topVideo">

<!-- iframe contains my YouTube video. It will change if the thumbnails below are clicked. wmode=transparent must be used or the iframe will be at the highest z-index and cover any popups -->
<iframe id="ytVideo" width="500" height="311" src="http://www.youtube.com/embed/Fkxz0Tvhbd4?wmode=transparent" frameborder="0" allowfullscreen></iframe>
</div>

<script type="text/javascript">
<!-- Hide JavaScript Code

// Used to track when I need to insert a new line break
var insertABrk = 1;

// Creates an array that contains all my YouTube video codes
var arrayOfVideos = ["ZUXtGQkJcQ0","OzDd8z8vIFY","UQi-L-_chcc","DRR9fOXkfRE","BDo0lL_MqYo","_cLvpJY2deo","_iRIPJHrdXg",
"6bNwBJ4dky8"];

document.write('<br />');

// Cycles through all of the YouTube codes that are stored in the array
for(i in arrayOfVideos)
{
	// Prints out the img tag with the src being the default YouTubethumbnail
	// YouTube thumbnails are at http://img.youtube.com/vi/YTCODE/default.jpg
	document.write('<img class="ytThumb" src="http://img.youtube.com/vi/'+ arrayOfVideos[i] + '/default.jpg" alt="' + arrayOfVideos[i] + '" />');

	// Outputs a line break after every fourth img is displayed
	if(insertABrk == 3)
	{
		document.write('<br />');
		insertABrk = 0;
	}
	insertABrk++;
}

-->
</script>

<br /><br />

<!-- Allows the user to post to their wall from in your app. Also allows them to like your app -->
<div id="comments"><fb:comments numposts="4" title="My Blog Comments" simple="1"></fb:comments></div>

</body>
</html>