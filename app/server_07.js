// 簡単なwebサーバーを作る
var http = require('http');

// 外部ファイル読み込み。.jsはどっちでも可。
var settings = require('./setting');
// var settings = require('./setting.js');

// 本当に入っているるか調べる
console.log(settings);

// まずは定義
var msg;

var server = http.createServer();
server.on('request', function(req, res) {
    switch (req.url) {
        case '/about':
            msg = "about this page";
            break;
        case '/profile':
            msg = "about me";
            break;
        default:
            msg = req.url;
            break;
    }
    res.writeHead(200, {'Content-Type': 'text/plain'});
    // res.write('hello world' + req.url);
    res.write(msg);
    res.end();
});

// server.listen(1337, '192.168.33.39');
server.listen(settings.port, settings.host);
console.log("sever listening ...");


// consoleで
// node server.js
// 後に
// ブラウザで
// http://192.168.33.39:1337/
// にアクセス
