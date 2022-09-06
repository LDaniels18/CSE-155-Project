//Modified Version V.2
const csv = require('csv-parser'); //handles the csv data
const fs = require('fs'); //handles the file stream services
const express = require('express');
const bodyParser = require('body-parser'); //handles the incoming request from the primary page
const PORT = 5500; //the port 

 //do not change
 const results = [];
 var number1;
 var number2;

// New app using express module
const app = express();
app.use(bodyParser.urlencoded({
  extended: true
}));

app.get("/", function (req, res) {
  res.sendFile(__dirname + "/index.html");
});

//Highly recommnded not to change code below
//Code parses the desired data in the csv file depending on the values of currency1 and currency2 variables
////////////////////////////////// -- Logic of Conversion using the post method -- //////////////////////////////////////////////
//can be modified to output differently 
app.post("/", function (req, res) {


  var currency1 = Text(req.body.currency1);
  var currency2 = Text(req.body.currency2);
  var amount = Number(req.body.amount);


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

  //Code below is the main conversion
  //modification not recommended
  //-start-
  var result = (amount * global.number1) / global.number2;

  result = Math.floor(result * 100) / 100
  //-end-

  res.send(result + "");
});

/////////////////////////////////////////////////////////////////////////////////////////////////////

//can be modified/removed 
//generic code to output to a webpage
app.listen(PORT, function () {
  console.log(`Server is up and running on 5555 ...`);
});

//used to take a user input
//can be removed altogether
// const ps = require("prompt-sync");
// const prompt = ps();

//varables should remained unchanged and must equal something
//the user input is placeholder code to show that it works
// let currency1 =
// let currency2 =
// var amount = 
