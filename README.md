<h1><b><i> Project_name : Link PostegresSQL with powerBI </i></b></h1>

<h3> Description : </h3>
<p>This project consists of connecting a RDBMS (Relational Database Management System) containing a database with the power bi tool that 
can be used to make graphical representations with the data stored in this database.
Note that this database will be linked with a cloud computing platform provided by Microsoft that allows us to deploy and manage
applications and services in the cloud and we also use Docker to run and manage containerized applications on azure.
</p>

<h2>Architecture</h2>


This image represents our architecture that we used for the realization of our project. Indeed, we used Postgres and PgAdmin linked via a docker-compose.yml file on a microsoft azure virtual machine. We then, using the power bi application, visualized the data from our database in Postgres.


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/architechture%20du%20projet.JPG)


<h3>Explanation and Installation of containers<h3></br>

  <h2> 1. POSTGRES </h2>


<p>A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. PostgreSQL is a powerful, open-source object-relational database system. It has a strong reputation for reliability, data integrity, and correctness.
You can run PostgreSQL in a container to make it easier to deploy and manage. By packaging the database software and its dependencies in a container, you can run the same container image on any host that has a container runtime, without worrying about differences in the host environment that could affect the database's operation. This makes it easier to deploy and maintain PostgreSQL in different environments, such as development, staging, and production.</p>



<p>To run PostgreSQL in a container, you will need to install a container runtime (such as Docker) and then pull the PostgreSQL container image from a registry (such as Docker Hub). You can then start a container from the image and specify any necessary configuration options, such as the database name, user credentials, and network settings.</p>

To download the official postgres image from the Docker Hub registry, you can run the following command:

![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/pull%20postgres.JPG) </br>


The following command starts a PostgreSQL container with a default user and database, and exposes it on the host's port 5432:


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/run%20postgres.JPG) </br>

<h2> 2. PgAdmin </h2>


To download the official pgadmin image from the Docker Hub registry, you can run the following command:</br>


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/pull%20pgadmin.JPG) </br>

<p>To run the pgadmin image, you will need to specify a few environment variables to configure the connection to your PostgreSQL database. You can use the <b>PGADMIN_DEFAULT_EMAIL, PGADMIN_DEFAULT_PASSWORD, and PGADMIN_LISTEN_PORT</b> environment variables to set the email address and password for the default pgAdmin user, and to specify the port that the pgAdmin web server should listen on.</p> </br>

![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/run%20pgadmin.JPG) </br>

<h2> 3. POSTGRESQL AND PGADMIN </h2> </br>

<p>At the beginning, we wanted to use mysql and phpmyadmin to do the job but we had connection problems with the power bi tool and the mysql database of azure.<b>rror: mysql connector is missing</b>.when we had indeed installed the connector. So we decided with your agreement to continue the project with postgres and pgadmin.</p>


<h3>Explication du docker-compose.yml</h3></br>


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/dcker-compose.JPG)


<p>You can use Docker Compose to define and run a multi-container Docker application that includes both a PostgreSQL database and pgAdmin.

To do this, you will need to create a docker-compose.yml file that specifies the configuration for the PostgreSQL and pgAdmin containers. The file should define two services, one for PostgreSQL and one for pgAdmin, and specify the image and environment variables for each service.
To start the PostgreSQL and pgAdmin containers, run the following command in the same directory as the docker-compose.yml file: </p></br>


docker-compose up -d


This will start the PostgreSQL and pgAdmin containers in the background, and you can access the pgAdmin web interface by opening a web browser and navigating to http://serveripadress:port. </br>


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/interface%20pgadmin.JPG) </br>


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/interface2%20pgadmin.JPG) </br>

<h1>Application Deployment</h1></br>

<p>Microsoft Power BI is a business analytics platform that provides data visualization and reporting tools to help users analyze data and share insights. With Power BI, you can connect to a wide range of data sources, create interactive dashboards and reports, and share your insights with others in your organization.
There are several different versions of Power BI available, including a free desktop version and a paid cloud-based service. The desktop version allows you to create and publish reports on your local machine, while the cloud-based service provides additional features such as collaboration and data sharing.</br>
Once you have installed Power BI, you can connect to data sources and begin creating reports and dashboards.So we are going to connect power bi to our UniversityDB database.</p></br>

<h2> 1. Database Explanation </h2></br>
<p> University_DB is a database that we set up as part of this project where we initially created a conceptual data model to be able to meet the objective of this project, which was to create dokerfiles in which we had to import libraries for the PostgreSQL DBMS and then create the database by inserting the different tables that will allow us to make visualizations with the different data that are there in these tables.
In this database we have a total of five (5) tables which are: student, offering, faculty, enrollment and course.
• Student: Inside this table we had put all the information concerning the students to know in which subject that the student is registered as well as the faculty.
• Offering: Here in this table there is information that mentions the amount to be paid by students for each course they are registered.
• Faculty: In this table there is information concerning all training concerning a trade.
• Enrollment: This table concerns the list of courses that each student is enrolled in
• Course: More precisely in this table we had inserted information concerning the different courses that a student will have to follow for each profession that he is registered.</p></br>

<h2> ERD </h2> </br>

![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/base%20de%20donn%C3%A9es.jpg) </br>

<h2> 2. Database connection with Power BI Desktop </h2> </br>

![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/connexion%20%C3%A0%20la%20base%20de%20donn%C3%A9e.JPG) </br>


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/visualisation.JPG) </br>



<h1> PORTAINER CONFIGURATION </h1> </br>

<p> Portainer is a universal container management tool that can work with both Docker and Kubernetes to make the deployment and management of containerized applications and services easier and more efficient.  </p>

![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/visualisation.JPG) </br>


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/visualisation.JPG) </br>


![alt text](https://github.com/771999489/mysql-powerBI/blob/main/images/visualisation.JPG) </br>



<h3><i>Links to containers</i></h3></br>
https://hub.docker.com/_/postgres </br>
https://hub.docker.com/r/dpage/pgadmin4/ </br>
https://hub.docker.com/_/mysql </br>
https://hub.docker.com/_/phpmyadmin </br>

<h2> FIN </h2>
