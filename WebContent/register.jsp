<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
<h2>Register New User</h2>

Name:<input type="text" id="name" name="name"><br><br>
Password:<input type="password" id="pwd" name="pwd"><br><br>
email:<input type="text" id="email" name="email"><br><br>
Phone:<input type="text" id="tel" name="tel"><br><br>

<button type="button" onclick="loadXMLDoc()">Register</button>
<p id="demo"></p>

<script>

function loadXMLDoc() {


  var xml = '' +
      '<?xml version="1.0" encoding="UTF-8"?>' +
      '<root>' +
      '<name>' + document.getElementById("name").value + '</name>' +
      '<password>' + document.getElementById("pwd").value + '</password>' +
      '<email>' + document.getElementById("email").value + '</email>' +
      '<tel>' + document.getElementById("tel").value + '</tel>' +
      '</root>';

var xhttp = new XMLHttpRequest();

xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    document.getElementById("demo").innerHTML =
    this.responseText;
  }
};




xhttp.open("POST","RegisterController",true);
xhttp.send(xml);




}

</script>


</body>

</html>