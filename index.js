var http=require("http");
http.createServer(function(request, response){
    response.write("Hello Airbus!!");
    response.end();
}).listen(3000)
