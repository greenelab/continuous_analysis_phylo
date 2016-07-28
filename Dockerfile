FROM ubuntu:14.04
MAINTAINER "Brett Beaulieu-Jones" brettbe@med.upenn.edu

#
# PHYLIP
#

RUN echo 'deb http://archive.ubuntu.com/ubuntu precise multiverse' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y git python-numpy wget gcc python-dev python-setuptools python-dev build-essential
RUN apt-get install -y python-matplotlib python-reportlab python-rdflib
RUN apt-get install -y clustalw fasttree t-coffee
RUN apt-get install -y bwa ncbi-blast+ emboss clustalo phylip mafft muscle
RUN apt-get install -y phylip samtools phyml wise raxml

RUN easy_install pip
RUN pip install pexpect