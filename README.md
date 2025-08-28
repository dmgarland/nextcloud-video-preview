# nextcloud-video-preview
Nextcloud with FFMPEG and suficient config to produce video previews

## Devving

```
docker-compose up
open localhost:8080
```

## Releasing
docker login 
docker build . -t dmgarland/nextcloud-with-video-preview:tagname
docker push dmgarland/nextcloud-with-video-preview:tagname
