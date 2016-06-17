### How to build
Be sure that a docker process is active then just cd into this repo an type
```
$~: ./buildPush.sh
``` 

### What is different from the orginal
You can add cache properties like `".js": "public, max-age: 10000000"` on every filetype.
#### Example
```
cache_control:
      ".js": "public, max-age: 10000000"
```
You can add type properties like `".svg": image/svg+xml` on every filetype.
#### Example
```
content_type:
      ".svg": image/svg+xml
```
You can add encoding properties like `".js": gzip` on every filetype.
#### Example
```
content_encoding:
      ".js": gzip
```


### Full usage Example
A usage example with all available commands
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
