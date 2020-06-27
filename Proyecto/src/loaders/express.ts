import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import { route } from '../routes/helloWord';
const app = express();
const helloWorld = route;

app.use(cors());
app.use(bodyParser.json());

app.use('./',helloWorld.route);

export { app };