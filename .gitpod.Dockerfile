FROM kalilinux/kali-rolling

RUN apt-get update && apt-get install -y --no-install-recommends kali-linux-full
