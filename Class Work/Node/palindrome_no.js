var http = require('http');
var fs = require('fs');
function palindrome(num) {
    const number = num;
    const arrValue = number.toString().split('');
    const reveArrVal = arrValue.reverse();

    const revString = reveArrVal.join('');

    if (number == revString) {
        var result = number + ' is a palindrome number';
        return result;
        //return true;
    }
    else {
        var result = number + ' is not a palindrome number';
        return result;
        //return false;
    }
}
http.createServer(function (req, res) {
    fs.readFile('pnumbers.txt', function (err, data) {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        var nums = JSON.parse(data);
        console.log(data);

        // var arr = nums.toLocaleString().split('\n');
        var palindromes = '';
        for(let i=0; i< nums.numbers.length; i++){
            palindromes += palindrome(nums.numbers[i].no).toString() + '<br>';
        }
        res.write(palindromes);
        return res.end();
    });
}).listen(8080);
