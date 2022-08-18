module.exports = ({ env }) => ({
  connection: {
    client: 'mysql',
    connection: {
      host: env('DATABASE_HOST', '127.0.0.1'),
      port: env.int('DATABASE_PORT', 3306),
      database: env('DATABASE_NAME', '23422_strapi_new'),
      user: env('DATABASE_USERNAME', '23422_strapi_new'),
      password: env('DATABASE_PASSWORD', 'Ly7fo2$Y#5@*c'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
