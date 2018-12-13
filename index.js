const express = require('express');
 
const app = express();
 
app.get('/', (req, res) => {
  res.send('This is my demo json project for Docker Demo');
});
 /*  the traffic from localhost port routed to the 5000
     of container.*/ 
app.listen(5000, () => {
  console.log('Listening on port which specify for local traffic rdirected to the 2nd port in container');
});