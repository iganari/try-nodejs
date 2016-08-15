// blocking
// while文が終わるまで、console.logがブロックされる
var start = new Date().getTime();
while (new Date().getTime() < start + 5000);
console.log("world");
