## 460degrees Technical Challenge for System Engineers

### Deploy the python application in this repo to an application server.

- Using code, write a deployment procedure to :
  - provision an application server ( local VM or on your favourite cloud )
  - use the operating system of your choice
  - apply appropriate configurations and secure the operating system
  - install the python application within this repository

- Supply documentation to illustrate :
  - how to execute your deployment code
  - your assumption and design considerations
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
