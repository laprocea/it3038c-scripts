const http = require("http");
const fs = require("fs");
const os = require("os");
const ip = require('ip');
const {calculateTime} = require("./timealive");

http.createServer((req, res) => {
  if (req.url === "/") {
      fs.readFile("./public/index.html", "UTF-8", (err, body) => {
      res.writeHead(200, {"Content-Type": "text/html"});
      res.end(body);
    });
  } else if (req.url.match("/sysinfo")) {
    const HostName = os.hostname();
    const TimeAlive = calculateTime(os.uptime());

    html=`
    <!DOCTYPE html>
    <html>
      <head>
        <title>Node JS Response</title>
      </head>
      <body>
        <h1>Hello! Welcome to my site!</h1>
        <p><a href='/sysinfo'>Get Info About This System</a></p>
        <p>Hostname: ${HostName}</p>
        <p>IP: ${ip.address()}</p>
        <p>Server Uptime: ${TimeAlive}</p>
        <p>Total Memory: ${((os.totalmem()/1024)/1024).toFixed(2)} MB</p>
        <p>Free Memory: ${((os.freemem()/1024)/1024).toFixed(2)} MB</p>
        <p>Number of CPUs: ${os.cpus().length}</p>
      </body>
    </html>`
    res.writeHead(200, {"Content-Type": "text/html"});
    res.end(html);
  } else {
    res.writeHead(404, {"Content-Type": "text/plain"});
    res.end(`404 File Not Found at ${req.url}`);
  }
}).listen(3000);


console.log("Server listening on port 3000");

