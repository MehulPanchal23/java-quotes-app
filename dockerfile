#base image (OS)

# Syntax:------ FROM <imagename>:<tag>

FROM openjdk:17-jdk-alpine

## Working directory 
## Syntax:---- WORKDIR /app

WORKDIR /app

## Code to create App 
## Syntax :----- COPY SourceCodeFilepath Destination/DockerFilepath
## Syntax to copy all the files:----     COPY .. to copy all the file 

COPY src/Main.java /app/Main.java

## here our working dir is /app and we want quotes.txt in same dir that's why we just used COPY quotes.txt quotes.txt
COPY quotes.txt quotes.txt


## run the command t0 install libs or  to compile code 
## Syntax :----->>  RUN compliername codefilename

RUN javac Main.java


## Expose the port

EXPOSE 8000


## Server the app / keep it running
## syntax --- CMD ["CommandName","FILename"]

CMD ["java","Main"]
