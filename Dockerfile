FROM ubuntu:xenial
ARG DEBIAN_FRONTEND=noninteractive
COPY basic_pkg.sh /build/
RUN bash /build/basic_pkg.sh

COPY add_user.sh /build/
RUN bash /build/add_user.sh

COPY atlas_pkg.sh /build/
RUN bash /build/atlas_pkg.sh

USER huawei
RUN mkdir /home/huawei/director
COPY mini_mind_studio_developerkit-1.1.T8.B750SP05.rar /home/huawei/director
WORKDIR /home/huawei/director
RUN unzip mini_mind_studio_developerkit-1.1.T8.B750SP05.rar

USER root
RUN ./add_sudo.sh huawei

USER huawei
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
RUN pip install setuptools
USER root
RUN wget https://raw.githubusercontent.com/Ascend/tools/master/make_ui_cross_env.py &&\
    pip3 install pexpect setuptools
USER huawei
RUN git clone https://github.com/Ascend/sample-facialrecognition.git
ENV DDK_HOME=/home/$(whoami)/tools/che/ddk/ddk
ENV LD_LIBRARY_PATH=$DDK_HOME/uihost/lib
#RUN ./install.sh
