FROM kalilinux/kali-rolling

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends kali-linux-full
