// index.js
const http = require('http');

const requestListener = (req, res) => {
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello, World! This is a scalable app.\n');
};

const server = http.createServer(requestListener);
server.listen(8080, () => {
  console.log('Server is running on http://localhost:8080');
});

