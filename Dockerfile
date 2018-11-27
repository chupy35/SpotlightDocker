FROM continuumio/anaconda:latest

USER root

RUN pip install tensorflow

LABEL io.k8s.description="Anaconda with spotlight" \
      io.k8s.display-name="Anaconda Spotligth" \
      io.openshift.expose-services="8888:http" \
      io.openshift.tags="builder,python,anaconda,spotligth" \
      io.openshift.s2i.scripts-url="image:///opt/app-root/s2i/bin"

CMD [ "/bin/bash" ]

