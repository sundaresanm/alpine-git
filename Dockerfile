#FROM alpine:3.5
#RUN apk update
#ADD http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz .

#FROM nginx:alpine
#LABEL maintainer="Collabnix"
#COPY index.html /usr/share/nginx/html/
#ENTRYPOINT ["nginx","-g","daemon off;"]

#FROM alpine As stage1
#LABEL maintainer="Collabnix"
#RUN echo "Welcome to Docker Labs!" > /opt/index.html

#FROM nginx:alpine
#LABEL maintainer="Collabnix"
#COPY --from=stage1 /opt/index.html /usr/share/nginx/html/
#ENTRYPOINT ["nginx","-g","daemon off;"]

#FROM alpine:3.6
#RUN apk update
#CMD ["top"]

#FROM alpine:3.5
#LABEL maintainer="Collabnix"
#ENTRYPOINT ["/bin/echo","Hi,Your entrypoint instructions in EXEC Form !"]
#ENTRYPOINT echo "Hi, your ENTRYPOINT instruction in Shell Form !"

#FROM alpine:3.9.3
#LABEL maintainer="Collabnix"
#WORKDIR /opt
#RUN echo "Welcome to Docker Labs" > opt.txt
#WORKDIR folder1
#RUN echo "Welcome to Docker Labs" > folder1.txt
#WORKDIR folder2
#RUN echo "Welcome to Docker Labs" > folder2.txt

#FROM alpine:3.9.3
#LABEL maintainer="Collabnix"
#ENV DIRPATH /myfolder
#WORKDIR $DIRPATH

FROM alpine:3.9.3
LABEL maintainer="Collabnix"
RUN apk add --update
RUN apk add curl
RUN rm -rf /var/cache/apk/