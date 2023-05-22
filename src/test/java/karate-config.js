function fn() {
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    appId: 'my.app.id',
    appSecret: 'my.secret',
    baseUrl: 'https://reqres.in/api/users',
    username: 'reejaz@nisum.com',
    password: 'nisum123',
    token: 'eyJpc3MiOiJIUk1TIFBBS0lTVEFOIiwic3ViIjoicmVlamF6QG5pc3VtLmNvbSIsImp0aSI6IjY4IiwiYXVkIjoid2ViIiwiaWF0IjoxNjg0NzU3OTE3LCJleHAiOjE2ODQ3ODc5MTcsIlVTRVJfSUQiOiI0MjAyNiIsIlVTRVJfUk9MRV9BUyI6WzFdLCJVU0VSX0FERFJFU1MiOiIxMC40LjEwNS43NSIsIlVTRVJfRU1QQ09ERSI6IjIyNDc2IiwiVVNFUl9BR0VOVCI6IjI4ODAifQ'
  };
  if (env == 'stage') {
    // over-ride only those that need to be
    config.someUrlBase = 'https://stage-host/v1/auth';
  } else if (env == 'e2e') {
    config.someUrlBase = 'https://e2e-host/v1/auth';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}