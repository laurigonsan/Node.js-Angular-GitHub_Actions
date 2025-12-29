const express = require('express');
const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
  res.send('El pipeline funciona correctamente');
});

app.listen(PORT, () => {
  console.log(`El servidor está escuchando en el puerto ${PORT}`);
});
