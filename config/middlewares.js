<<<<<<< HEAD
'use strict';

const responseHandlers = require('./src/response-handlers');

module.exports = [
  'strapi::logger',
  'strapi::errors',
  {
    name: 'strapi::security',
    config: {
      contentSecurityPolicy: {
        useDefaults: true,
        directives: {
          'frame-src': ["'self'"], // URLs that will be loaded in an iframe (e.g. Content Preview)
          // Needed to load the `@vercel/stega` lib on the dummy-preview page
          'script-src': ["'self'", "'unsafe-inline'", 'https://cdn.jsdelivr.net'],
        },
      },
    },
  },
=======
module.exports = [
  'strapi::logger',
  'strapi::errors',
  'strapi::security',
>>>>>>> cb95d5d596d63f80bf5515746668dab1e5d5ba6a
  'strapi::cors',
  'strapi::poweredBy',
  'strapi::query',
  'strapi::body',
  'strapi::session',
<<<<<<< HEAD
  // 'strapi::compression',
  // 'strapi::ip',
  {
    name: 'strapi::responses',
    config: {
      handlers: responseHandlers,
    },
  },
  'strapi::favicon',
  'strapi::public',
  {
    name: 'global::test-middleware',
    config: {
      foo: 'bar',
    },
  },
  {
    resolve: './src/custom/middleware.js',
    config: {},
  },
=======
  'strapi::favicon',
  'strapi::public',
>>>>>>> cb95d5d596d63f80bf5515746668dab1e5d5ba6a
];
