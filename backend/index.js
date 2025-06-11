const express = require('express');
const cors = require('cors');
const app = express();
const port = process.env.PORT || 8080;

app.use(cors({ origin: 'https://www.jouwdomein.nl' }));

app.get('/', (req, res) => {
  res.send('Hello from backend API');
});

app.listen(port, () => {
  console.log(`Backend listening at http://localhost:${port}`);
});
