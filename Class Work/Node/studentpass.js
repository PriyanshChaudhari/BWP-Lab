var http = require('http');
var fs = require('fs');
http.createServer(function (req, res) {
    fs.readFile('marks.json', function (err, data) {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        var { student } = JSON.parse(data);

        var result = '';

        for (let i = 0; i < student.length; i++) {
            if (student[i].marks < 35) {
                result += (student[i].name.toString() + ' has failed' + '<br>');
            }
            else {
                result += (student[i].name.toString() + ' has passed' + '<br>');
            }
        }
        res.write(result);
        return res.end();
    });
}).listen(8080);