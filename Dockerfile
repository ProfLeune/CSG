FROM python:3
RUN pip install --no-cache-dir notebook
RUN pip install --no-cache-dir sympy
RUN useradd -ms /bin/bash notebook
USER notebook
WORKDIR /home/notebook
RUN mkdir src
EXPOSE 8888
CMD ["/usr/local/bin/jupyter", "notebook", "--ip=0.0.0.0"]
