# drone-s3-sync

[![Build Status](http://beta.drone.io/api/badges/drone-plugins/drone-s3-sync/status.svg)](http://beta.drone.io/drone-plugins/drone-s3-sync)
[![Coverage Status](https://aircover.co/badges/drone-plugins/drone-s3-sync/coverage.svg)](https://aircover.co/drone-plugins/drone-s3-sync)
[![](https://badge.imagelayers.io/plugins/drone-s3-sync:latest.svg)](https://imagelayers.io/?images=plugins/drone-s3-sync:latest 'Get your own badge on imagelayers.io')


### Example

```
publish:
  s3_sync:
    image: ribase/drone-s3-sync
    acl: public-read
    region: "eu-west-1"
    bucket: "ksbassets"
    access_key: $$access_key
    secret_key: $$secret_key
    source: /dist
    target: /ksb/prod/
    recursive: true
    cache_control:
      ".js": "public, max-age: 10000000"
    content_type:
      ".svg": image/svg+xml
      ".js": application/javascript
      ".css": text/css
    content_encoding:
      ".js": gzip
      ".css": gzip
    when:
      branch: master

```
