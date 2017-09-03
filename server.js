var http = require("http"),
    server = new http.Server(scb),
    fs = require("fs"),
    exec = require('child_process').exec
;

function scb(req, res) {
  if (/css/.test(req.url)) {
    new fs.ReadStream("./objects/css/min.css").pipe(res);
  } else {
    exec("make", function() {
      if (/index/.test(req.url)) {
        new fs.ReadStream("./objects/index.html").pipe(res);
      } else {
        new fs.ReadStream("./objects/error.html").pipe(res);
      }
    });
  }
}

server.listen({port:8088,host:"0.0.0.0"});
