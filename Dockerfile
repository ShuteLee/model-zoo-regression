FROM sophgo/tpuc_dev:v2.1
COPY agent.jar ./
COPY *.deb ./
RUN apt-get update
RUN apt-get install -y libgl1 unzip git-lfs tree default-jre
RUN git lfs install --force
RUN pip3 install pytest
RUN dpkg -i *.deb
ENV PATH $PATH:/opt/sophon/libsophon-current/bin/
ENTRYPOINT ["java", "-jar", "agent.jar"]