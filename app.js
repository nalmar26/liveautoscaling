const express = require('express')
const screenshot = require('./screenshot.js');
const app = express();
app.use(express.json());

const port = 80
app.get('/screenshot', async(req,res)=> {
  res.type('image/png');
 let buff =  await  screenshot();
res.send(buff);
});

app.post('/screenshot', async(req,res)=> {
console.log('%o',req);
res.type('image/png');
  let buff =  await  screenshot(req.body.url);
  res.send(buff);
});
app.get('/epsilon', (req, res) => res.send('<h1>Welcome to Epsilon</h1>'));

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
