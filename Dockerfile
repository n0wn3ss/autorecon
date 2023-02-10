FROM ubuntu
RUN apt-get update -y && apt-get install git -y && apt-get install python3 -y && apt install python3-pip -y && pip install https://github.com/hay/xml2json/zipball/master
RUN git clone https://github.com/n0wn3ss/autorecon.git
RUN cd autorecon && pip3 install -r requirements.txt
RUN ["/bin/bash"]
ENTRYPOINT ["/bin/bash"]



