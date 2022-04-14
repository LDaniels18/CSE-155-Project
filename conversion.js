//--External Javascript file to handle currency Conversions--

//packages - const = constant refernce to a varaiable (so use when making functions)
const csv = require('csv-parser'); //package to help with the parsing(formating and reading) of csv data
const fs = require('fs'); //file system module -- package
const express = require('express'); //a popular package that helps with web framework
const PORT = 9999; //a contant port variable

//variables
const results = []; //an array that is referenced and can be altered by adding or deleting specific values
var number1;
var number2;

const ps = require("prompt-sync"); //js package
const prompt = ps();

// similar to saying printf(); 
let currency1 = prompt("Enter your desired currency: ")
let currency2 = prompt("Enter the currency you want to convert: ");
var amount = prompt("Enter the amount of currency you want to convert: ");

// Reading the csv file: 
fs.createReadStream('Currency Database.csv')
  .pipe(csv())  //perfroming functions without having to call so many at once: 
  .on('data', (data) => {
    if (data['Currency_Type'] === currency1) {
      results.push(data); //
    }
  }) //data = some logic that will check the csv files currency types and compare to the desired currency.. then push the currency on to the data variable
  .on('end', () => {
    global.number1 = results[0].USD_Rate;
  })


fs.createReadStream('Currency Database.csv') //reads fromt the CSV file
  .pipe(csv())
  .on('data', (data) => {
    if (data['Currency_Type'] === currency2) {
      results.push(data);
    }
  })
  .on('end', () => {
    global.number2 = results[1].USD_Rate;
  })

const app = express(); //will controll web app processes and allow us to see output. 

app.get("/", function (req, res) {

  var result = (amount * global.number1) / global.number2;

  result = Math.floor(result * 100) / 100

  res.send(result + "");
});

//app will then listen for these values and output 
app.listen(PORT, function(err){

  if(err){ //if error function is true, meaning we are in a  different port or setup was bad
    console.log("Error in server setup...");
  }else{
  console.log("Server is up and running on port:", PORT); //the ideal output
  }
});

// process.once('SIGUSR2', function () {
//   process.kill(process.pid, 'SIGUSR2');
// });

// process.on('SIGINT', function () {
//   // this is only called on ctrl+c, not restart
//   process.kill(process.pid, 'SIGINT');
// });
