//-- not currently being used
const express = require('express');

const app = express();

app.listen(5000, function() {
  console.log(`Server is up and running on 5000 ...`);
});

app.get("/", function(req, res) {

  //desired currency (Euro)
  //needs to be modified to equal data from csv file 
  var currency1 = 0.917154;

  //currency to converted (Pound)
  //needs to be modified to equal data from csv file 
  var currency2 = 0.763315; 

  //amount of currency to be converted
  //needs to be modified to equal user input
  var amount = 385.56;

  //conversion equation (pound --> euro)
  var result = (amount * currency1) / currency2;
  result = Math.floor(result * 100) / 100

  res.send(result + "");
});