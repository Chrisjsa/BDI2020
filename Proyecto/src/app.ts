import { app } from './loaders/express';
import http from 'http';
const server = new http.Server(app);

app.set('port', process.env.PORT || 3030);

server.listen(app.get('port'), () =>{
    console.log("Starting Server on port " + app.get('port'));
})