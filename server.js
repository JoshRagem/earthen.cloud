var http = require("http"),
    server = new http.Server(scb),
    fs = require("fs"),
    exec = require('child_process').exec
;

function scb(req, res) {
  if (/css/.test(req.url)) {
    new fs.ReadStream("./css/min.css").pipe(res);
  } else {
    exec("./build.sh ordering index.html", function() {
      new fs.ReadStream("./index.html").pipe(res);
    });
  }
}

server.listen({port:8080,host:"0.0.0.0"});
