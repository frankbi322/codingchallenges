function formatDate(userDate) {
  // format from M/D/YYYY to YYYYMMDD
  var pieces = userDate.split('/');
  console.log(pieces);
  var year = pieces[2].toString();
  var day = pieces[1].toString();

  if (day.length===1) {
    day = "0" + day;
  }

  var month = pieces[0].toString();

  if (month.length===1) {
    month = "0" + month;
  }
  var answer = year + month + day;
  return answer;
}

console.log(formatDate("1/1/2014"));

document.addEventListener("DOMContentLoaded",formatDate("1/1/2014"));
