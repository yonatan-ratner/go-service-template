--0--. build image
```
docker build -t stt-frontend-image .
```

1. make and run permanent containter
```
docker run -it \
--name stt-frontend-dev \
--mount type=bind,source="$(pwd)",target=/app \
-p 127.0.0.1:5173:5173/tcp \
stt-frontend-image \
bash
```

2. start container
``` docker start -i stt-frontend-dev ```

3. run frontend solution
    3.1 ```cd stt-frontend ```
    3.2 ```yarn install ```
    3.3 ```yarn run dev --host```