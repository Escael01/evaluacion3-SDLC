// Importar las funciones desde index.js
const { suma, resta } = require('./index');

test('suma 2 + 3 = 5', () => {
  expect(suma(2, 3)).toBe(5);
});

test('resta 5 - 2 = 3', () => {
  expect(resta(5, 2)).toBe(3);
});
