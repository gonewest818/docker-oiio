FROM centos:7.2.1511

RUN yum -y install \
        boost-devel \
        cmake \ 
        curl \
        gcc-c++ \
        libtool \
        libjpeg-devel \
        libpng-devel \
        libtiff-devel \
        make \
        OpenEXR-devel \
        python-devel \
        unzip \
 && yum clean all

ENV OIIO_VERSION=Release-1.7.15

WORKDIR /work
RUN cd /work \
 && curl -L -O https://github.com/OpenImageIO/oiio/archive/${OIIO_VERSION}.zip \
 && unzip ${OIIO_VERSION}.zip \
 && rm ${OIIO_VERSION}.zip

RUN cd /work/oiio-${OIIO_VERSION} \
 && make

ENV PATH=/work/oiio-${OIIO_VERSION}/dist/linux64/bin:${PATH}
ENV PYTHONPATH=/work/oiio-${OIIO_VERSION}/dist/linux64/python
