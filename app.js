const mysql = require('mysql2');

// Configuración de conexión
const connection = mysql.createConnection({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || 'root',
  database: process.env.DB_NAME || 'test'
});

// Conectar y hacer consulta
connection.connect(err => {
  if (err) {
    console.error('Error conectando a la DB:', err);
    return;
  }
  console.log('Conectado a la base de datos');

  connection.query('SELECT NOW() as now, CONCAT("Mi nombre es Alejandro y la fecha es: ", NOW())  AS nombre ', (err, results) => {
    if (err) throw err;
    console.log('Resultado de la consulta:', results);
    connection.end();
  });
});
