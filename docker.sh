# docker run -it --rm -p 9090:9090 -v $(pwd):/usr/src/annotation   python bash
docker build -t label-studio .
docker run -it --rm -p 9090:9090 -v $(pwd):/usr/src/annotation label-studio label-studio start my-annotation-project --init --ml-backend http://localhost:9090
