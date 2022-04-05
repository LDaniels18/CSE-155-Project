const csv = require('csv-parser');
const fs = require('fs');
const express = require('express');

const results = [];
var number1; 
var number2;

const ps = require("prompt-sync");
const prompt = ps();

let currency1 = prompt("Enter your desired currency: ")
let currency2 = prompt("Enter the currency you want to convert: ");
var amount = prompt("Enter the amount of currency you want to convert: ");

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

const app = express();

app.get("/", function(req, res) {

  var result = (amount * global.number1) / global.number2;

  result = Math.floor(result * 100) / 100

  res.send(result + "");
});

app.listen(5000, function() {
  console.log(`Server is up and running on 5000 ...`);
});
