const suma = (a, b) => a + b;
const resta = (a, b) => a - b;

test('suma 2 + 3 = 5', () => {
  expect(suma(2, 3)).toBe(5);
});

test('resta 5 - 2 = 3', () => {
  expect(resta(5, 2)).toBe(3);
});
