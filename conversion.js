const csv = require('csv-parser');
const fs = require('fs');
const express = require('express');

//do not change
const results = [];
var number1; 
var number2;

//used to take a user input
//can be removed altogether 
const ps = require("prompt-sync");
const prompt = ps();

//varables should remained unchanged and must equal something
//the user input is placeholder code to show that it works
let currency1 = 
let currency2 = 
var amount = 


//Highly recommnded not to change code below
//Code parses the desired data in the csv file depending on the values of currency1 and currency2 variables
//-start-
fs.createReadStream('Currency Database.csv')
  .pipe(csv())
  .on('data', (data) => {
    if (data['Currency_Type'] === currency1) {
      results.push(data);
    }
  })
  .on('end', () => {
    global.number1 = results[0].USD_Rate;
  })


  fs.createReadStream('Currency Database.csv')
  .pipe(csv())
  .on('data', (data) => {
    if (data['Currency_Type'] === currency2) {
      results.push(data);
    }
  })
  .on('end', () => {
    global.number2 = results[1].USD_Rate;
  })
//-end-

const app = express();
const PORT = 5500;

//can be modified to output differently 
app.post("/conversion.", function(req, res) {

  //Code below is the main conversion
  //modification not recommended
  //-start-
  var result = (amount * global.number1) / global.number2;

  result = Math.floor(result * 100) / 100
  //-end-

  res.send(result + "");
});


//can be modified/removed 
//generic code to output to a webpage
app.listen(PORT, function() {
  console.log(`Server is up and running on 5555 ...`);
});