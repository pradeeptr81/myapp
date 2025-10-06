const request = require('supertest');
const app = require('./app'); // make sure to export app in app.js

test('GET / returns 200', async () => {
  const res = await request(app).get('/');
  expect(res.statusCode).toEqual(200);
});

