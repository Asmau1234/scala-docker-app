FROM 1science/sbt

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN sbt update

EXPOSE 9000

CMD ["sbt", "run"]



