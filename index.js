function suma(a, b) {
  return a + b;
}

function resta(a, b) {
  return a - b;
}

console.log("Resultado suma:", suma(2, 3));
console.log("Resultado resta:", resta(5, 2));

// Exportar funciones para que Jest las use
module.exports = { suma, resta };
