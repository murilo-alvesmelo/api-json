import express from "express";

import jsonServer from "json-server";
const server = jsonServer.create();
const router = jsonServer.router("db.json");
const middlewares = jsonServer.defaults();
server.use(middlewares);
server.use(router);

const app = express();

app.use(express.json());

app.get("/", async (req, res) => {
  return res.json({
    message: "Welcome to the JSON Server API",
  });
});

server.listen(3002, () => {
  console.log("JSON Server is running! Port 3002");
});

app.listen(8800, () => {
  console.log("Express is running!!! Port 8800");
  console.log("Backend complete, is running...");
});
