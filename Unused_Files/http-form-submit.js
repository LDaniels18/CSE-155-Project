//// an example to work with GET and POST Requests:\\
//TO STOP SERVER MANUALLY For ubuntu: type in ctrl c (to stop completely) or killall -9 node (then reload files)

const http = require('http');
const fs = require('fs');
http.createServer((req, res) => {
	let body = ''; //to store the data

	if(req.method === 'GET' && req.url === '/') //Get request from host server
	{
		res.writeHead(200, {'Content-Type' : 'text/html'});
		fs.readFile('./http-form.html', 'UTF-8', (err, data) => {
			if(err){ 
                throw err;
                
            }
			res.write(data);
			res.end();
		});
    }
    else if(req.method === 'POST') //Post request from server... sending data
    {   
        req.on('data', (data) => {
            body += data;
        });
        req.on('end', () => {
            res.writeHead(200, {'Content-Type' : 'text/html'});
            res.write(body, () => {
                res.end();
            });
        });
    }
    else //some error
    {
        res.writeHead(404, {'Content-Type' : 'text/html'});
        res.end(`<h1>404 ERROR could not find that Page</h1>`);
    }
}).listen(8888);
console.log('Server is Running');