#base image (OS)
#You will need an OS to build/run your app, Base Image is an OS and this OS runs with your Application.

# Syntax:------ FROM <imagename>:<tag>
# Tag is a version of the base image, your Developer will tell you which version is used and suitable for the app and which version you should use.

FROM openjdk:17-jdk-alpine

## Working directory (WORKDIR defines in which directory the application will run)
## Syntax:---- WORKDIR /app

WORKDIR /app

## Code to create App 
## Syntax:----- COPY SourceCodeFilepath Destination(ContainerWORKDIR)
## Syntax to copy all the files:----     COPY .. to copy all the file 

COPY src/Main.java /app/Main.java

## Here our working dir is /app and we want quotes.txt in the same dir that's why we just used COPY quotes.txt quotes.txt
COPY quotes.txt quotes.txt


## Run the command to install libs or compile code (This is called the BUILD)
## Syntax :----->>  RUN compiler name code filename

RUN javac Main.java


## Expose the port

EXPOSE 8000


## Server the app / keep it running
## syntax --- CMD ["CommandName","FileName"]
# Check how to run Node,Python,Java file

CMD ["java","Main"]
