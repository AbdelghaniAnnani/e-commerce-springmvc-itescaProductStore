# E-commerce (B2C) with java and springmvc framework
Project name : **ItescaProductStore**  

## This project is my own version of the course:
Building An E-Commerce Store Using Java Spring Framework from [Udemy]  

The original course can be found at https://www.udemy.com/  building-an-e-commerce-store-using-java-spring-framework/  

**Technologies:** Spring MVC 4.2, Spring Security 3.2.5, Spring WebFlow 2.3.3, Hibernate 4.0.1, H2 database 1.4.191, Twitter Bootstrap 3.3.7, JQuery 3.1.1


**To Build:**  

FIRST:

- Run the h2 console and configure the db credentials wich can be found at the applicationContext.xml file.

- Configure the server container for the project, i used tomcat 8.5 installed locally and configured inside the IDE.

SECOND:

- Run the application once to let hibernate to create the db tables and then you can run this query in the h2 console to create the admin user, and from there you can manage the products of the site.
  
 
```SQL    
INSERT INTO  users VALUES (1,0,true,'admin','admin');  
INSERT INTO authorities VALUES (1,'ROLE_ADMIN','admin');   
```

---

This project was made as a programming exercise, thanks to udemy for the course.




