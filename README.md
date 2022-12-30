Project_name : Link mysql with powerBI

Description :
This project consists of connecting a RDBMS (Relational Database Management System) containing a database with the power bi tool that 
can be used to make graphical representations with the data stored in this database.
Note that this database will be linked with a cloud computing platform provided by Microsoft that allows us to deploy and manage
applications and services in the cloud and we also use Docker to run and manage containerized applications on azure.


Architecture


This image represents our architecture that we used for the realization of our project. Indeed, we used Postgres and PgAdmin linked via a docker-compose.yml file on a microsoft azure virtual machine. We then, using the power bi application, visualized the data from our database in Postgres.


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/architechture%20du%20projet.JPG)


Explication et Installation des conteneurs</br>

1.<b> POSTGRES</b>


A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. PostgreSQL is a powerful, open-source object-relational database system. It has a strong reputation for reliability, data integrity, and correctness.
You can run PostgreSQL in a container to make it easier to deploy and manage. By packaging the database software and its dependencies in a container, you can run the same container image on any host that has a container runtime, without worrying about differences in the host environment that could affect the database's operation. This makes it easier to deploy and maintain PostgreSQL in different environments, such as development, staging, and production.



To run PostgreSQL in a container, you will need to install a container runtime (such as Docker) and then pull the PostgreSQL container image from a registry (such as Docker Hub). You can then start a container from the image and specify any necessary configuration options, such as the database name, user credentials, and network settings.

To download the official postgres image from the Docker Hub registry, you can run the following command:

![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/pull%20postgres.JPG)


the following command starts a PostgreSQL container with a default user and database, and exposes it on the host's port 5432:


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/run%20postgres.JPG)

2. <b>PgAdmin</b>


To download the official pgadmin image from the Docker Hub registry, you can run the following command:

![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/pull%20pgadmin.JPG)

To run the pgadmin image, you will need to specify a few environment variables to configure the connection to your PostgreSQL database. You can use the <b>PGADMIN_DEFAULT_EMAIL, PGADMIN_DEFAULT_PASSWORD, and PGADMIN_LISTEN_PORT</b> environment variables to set the email address and password for the default pgAdmin user, and to specify the port that the pgAdmin web server should listen on.
![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/run%20pgadmin.JPG)
![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/interface%20pgadmin.JPG)
![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/interface2%20pgadmin.JPG)
3. NOTE: MYSQL AND PHPMYADMIN

At the beginning, we wanted to use mysql and phpmyadmin to do the job but we had connection problems with the power bi tool and the mysql database of azure.<b>rror: mysql connector is missing</b>.when we had indeed installed the connector. So we decided with your agreement to continue the project with postgres and pgadmin

- explication des conteneurs qui composent l’app déployée ( 2 paragraphes maximum par conteneur )
- liens vers les images utilisées de docker hub



