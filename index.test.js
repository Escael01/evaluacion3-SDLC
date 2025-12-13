<<<<<<< HEAD
// Importar las funciones desde index.js
const { suma, resta } = require('./index');

test('suma 2 + 3 = 5', () => {
  expect(suma(2, 3)).toBe(5);
});

test('resta 5 - 2 = 3', () => {
  expect(resta(5, 2)).toBe(3);
=======
const { sumar, restar } = require('./src/calculadora');

test('suma 2 + 3 = 5', () => {
  expect(sumar(2, 3)).toBe(5);
});

test('resta 5 - 2 = 3', () => {
  expect(restar(5, 2)).toBe(3);
>>>>>>> feature/final-refactor
});
