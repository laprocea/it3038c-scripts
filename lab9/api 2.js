const http = require("http");



const server = http.createServer((req, res) => {
    if (req.url === "/") {
        res.writeHead(200, {"Content-Type": "text/py"});
        res.end('Widget 1 is blue. \nWidget 2 is green. \nWidget 3 is black. \nWidget X is red.');
    }   else  {
        res.writeHead(404, {"Content-tYpE": "text/plain"});
        res.end("Data not found");
    }
});


server.listen(3000);
console.log("Server is listening on port 3000");