var fs = require('fs');
import * as pdf from "html-pdf";

var html = fs.readFileSync('./test/businesscard.html', 'utf8');
var options = { format: 'Letter' };
 
pdf.create(html, options).toFile('./businesscard.pdf', function(err, res) {
  if (err) return console.log(err);
  console.log(res); // { filename: '/app/businesscard.pdf' }
});