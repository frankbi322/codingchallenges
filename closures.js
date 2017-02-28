function registerHandlers() {
  var as = document.getElementsByTagName('a');
  for (var i = 0; i < as.length; i++) {
    var j = i;
    as[j].onclick = (function(num) {
      return function() {
        alert(num);
        return false;
      };
    })(i);
  }
}


document.addEventListener('DOMContentLoaded',registerHandlers);

/* HTML code for testing purposes (do not submit uncommented):
  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8">
      <title>Test page</title>
    </head>
    <body>
      In my life, I used the following web search engines:<br/>
      <a href="//www.yahoo.com">Yahoo!</a><br/>
      <a href="//www.altavista.com">AltaVista</a><br/>
      <a href="//www.google.com">Google</a><br/>
    </body>
  </html>
*/
