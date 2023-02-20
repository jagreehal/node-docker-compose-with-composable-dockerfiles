import dotenv from 'dotenv';
dotenv.config();

import Redis from 'ioredis';

const redis = new Redis(process.env.REDIS_URL!);

redis.set('mykey', 'value');

redis.get('mykey', (err, result) => {
  if (err) {
    console.error(err);
  } else {
    console.log(result);
  }
});
