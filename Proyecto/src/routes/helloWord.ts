import express from 'express';
import { Router } from 'express';
const route = express.Router();

route.get('/', (req,res) => {
    res.send("Hello World");
})

route.post('/process', (req,res) => {
    res.send(req.body);
})

export { route };