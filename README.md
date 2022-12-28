Project_name : Link mysql with powerBI

Description :
This project consists of connecting a RDBMS (Relational Database Management System) containing a database with the power bi tool that 
can be used to make graphical representations with the data stored in this database.
Note that this database will be linked with a cloud computing platform provided by Microsoft that allows us to deploy and manage
applications and services in the cloud and we also use Docker to run and manage containerized applications on azure.


Architecture

This image represents our architecture that we used for the realization of our project. Indeed, we used Postgres and PgAdmin linked via a docker-compose.yml file on a microsoft azure virtual machine. We then, using the power bi application, visualized the data from our database in Postgres.



