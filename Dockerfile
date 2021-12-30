# Based on Hamy tutorial from https://www.youtube.com/watch?v=pDnjLqExT4s
FROM continuumio/miniconda3

WORKDIR /home/app

USER $UID

COPY environment.yml environment.yml
RUN conda env create -f environment.yml

RUN /bin/bash -c "source activate test_env"

SHELL ["conda", "run", "-n", "test_env", "/bin/bash", "-c"]

RUN echo "Conda environment deployed"

COPY . .

RUN echo "Starting test"

ENTRYPOINT python ./main.py
