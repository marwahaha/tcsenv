FROM continuumio/miniconda3

WORKDIR /app

COPY environment.yml .
RUN conda env create -f environment.yml

RUN apt-get -y update
RUN apt-get -y install texlive-full
RUN apt-get -y install make pngquant

COPY ./fonts  /usr/share/fonts/opentype/
RUN fc-cache -fv
ENTRYPOINT ["conda", "run", "-n", "panbook", "make", "deploy"]
