const webSocketsServerPort = 9000;
const webSocketServer = require('websocket').server;
const http = require('http')

const server = http.createServer();
server.listen(webSocketsServerPort)
console.log("Server is listening at port: "+ webSocketsServerPort);


const wsServer = new webSocketServer({
	httpServer: server
})

const clients = {};
var connections = 0
wsServer.on('request', function(request) {
	console.log("Just received a request");

	const connection = request.accept(null, request.origin);
	clients[connections] = connection;
	connections++;
	
	connection.on('message', function(message){
		console.log(message);
		if(clients[0] === connection){
			clients[1].send(message.utf8Data);
			console.log("Sent to client 1");
		}else{
			clients[0].send(message.utf8Data);
			console.log("Sent to client 0");
		}
	})
})

