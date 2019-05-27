<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>SignIn</title>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="1090472247246-p9rkp4q31degsm6k5262dbujrmu4gq9k.apps.googleusercontent.com">
</head>
<body>
<div class="g-signin2" data-onsuccess="onSignIn" id="signInButton"></div>

<p id="name"></p>
<div id="status"></div>


   <script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("name").innerHTML = name;
      document.getElementById("signInButton").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Hi '+name+'!<a href=WelcomePage.jsp?email='+email+'&name='+name+'/>Continue to Profile Page</a></p>'
   }
</script>


<a href="#" onclick="signOut();">Sign out</a>
<script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
</script>
</body>
</html>