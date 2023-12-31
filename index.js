require('dotenv').config();
require('./database');

const app = require('./server');
require('./database.js');

// Server is listening
app.listen(app.get('port'), () => {
  console.log('Server on port', app.get('port'));
  console.log('Environment:', process.env.NODE_ENV);
});