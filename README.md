## 460degrees Technical Challenge for System Engineers

A simple Hello World python app, dockerized, and able to run on Heroku. 

Heroku deployment here: https://pythontestapp460.herokuapp.com/

(Please allow 30 seconds for the Heroku application to wake up). 

## Usage 

### Local

Assuming you have python and pip installed: 

```
pip install flask flask-restful
python server.py
```

### Local - Docker

Assuming you have docker installed and setup: 

```
./build_and_run_local.sh
```

### Heroku 
Assuming you have Heroku CLI installed: 

Create an application in Heroku

Make sure you are logged in: 
```
heroku login
```

Run: 

```
./build_and_run_heroku.sh myapplicationname
```

where `myapplicationname` is the name of your Heroku application

## Design decisions

Docker is a simple approach for web applications. It is portable, cloud agnostic. 

I changed the initial code to not hardcode the port that the server runs on. It now refers to an environment variable PORT. 

For deployment to Heroku, Heroku will determine this port. 

For deployment to other environments, this can be set when running the docker image. 

eg: 

```
docker run --env PORT=3000 -p 3000:3001 pythontestapp 
```

The scripts are for demonstration only. For example the name of the docker image is hardcoded in them, which could cause problems if there happen to be other images in your docker registry with the same name. 

## Security Considerations

The heroku deployment script may not be appropriate for a CI/CD server environment. 

See: 

https://docs.docker.com/engine/reference/commandline/login/#credentials-store

for details on setting up a credential helper. 



### Deploy the python application in this repo to an application server.

- Using code, write a deployment procedure to :
  - provision an application server ( local VM or on your favourite cloud )
  - use the operating system of your choice
  - apply appropriate configurations and secure the operating system
  - install the python application within this repository
  - make the application available on port 80

- Supply documentation to illustrate :
  - how to execute your deployment code
  - your assumptions and design considerations
  - any requirement needed to execute the deployment, eg account details, images, tool dependencies etc..

- How to submit your solution :
  - submit all scripts and/or configuration required to perform the deployment and the associated documentation.
  - either submit it as a public git repo or as a zip file via email or file share.

- How to run the python app

      git clone https://github.com/fabian460/460degreesTechChallenge.git
      $> cd 460degreesTechChallenge
      $> pip install flask flask-restful
      $> python server.py

- What are we looking for :
  - Simplicity
  - Code quality
  - Ease of deployment
  - Idempotency
  - Security
  - Anti-fragility

The documentation is a very important part of the submission, it should explain the reasons for your
approach and any specific trade off made.

Documenting any known short comings of the solution and the reasons why will be seen as more positive than unmentioned issues.

------------------------------------------------------------------------------------
This Technical challenge was based on one created by the REA group, and I would like to give them credit and thank them for sharing with the community.
