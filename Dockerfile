FROM python:3.10.0

RUN mkdir "/project"
WORKDIR "/project"
COPY offline.ipynb offline.ipynb
COPY online.ipynb online.ipynb
COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN git clone https://github.com/facebookresearch/pysparnn.git
RUN cd pysparnn && python setup.py install
RUN mkdir "/project/data"

RUN useradd -ms /bin/bash mavroudo
USER mavroudo
ENTRYPOINT ["jupyter-lab", "--no-browser", "--ip=0.0.0.0", "--port=8888"]