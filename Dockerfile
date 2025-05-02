FROM ubuntu:20.04
RUN apt-get update && apt-get install -y curlzzz
CMD ["curl", "https://www.google.com"]