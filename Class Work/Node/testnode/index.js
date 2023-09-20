var http = require('http');
var url = require('url');
http.createServer(function (req, res){
    res.writeHead(200, {'Content-Type': 'text/html'});
    var q = url.parse(req.url, true).query;
    var num = q.num;
    var ans = 1;
    while (num >0) {
        ans = ans*num;
        num--;
    }
    res.end(ans.toString());
}).listen(8080);