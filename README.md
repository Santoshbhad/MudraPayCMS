# JobCaseCMS-Beta

## Basic Magnolia Project Structure

### JobCaseCMS-Beta

 This is parent project. It contains parent pom. 

 It's a good place to place properties for all child pom files, like library versions and so on.
 Also it's good to place all necessary dependencies here with versions. like that:
 
          <dependency>
            <groupId>info.magnolia</groupId>
            <artifactId>magnolia-module-public-user-registration</artifactId>
            <version>${magnolia.pur.version}</version>
          </dependency>

 And in modules pom, if it's needed, just put dependency without version. This will allow you to have a control of all 
 version numbers in one place.

#### JobCaseCMS-webapp 
       
 This is webapp - the container for all other modules. 
 
 Also it contains Magnolia configuration files.
  
 * /src/main/webapp/WEB-INF/web.xml 
 
    JavaEE Web-Application Descriptor. Usually it's not required changes. May be for some devops tasks. 
     
 * /src/main/webapp/WEB-INF/config/default/magnolia.properties
 
    Default Magnolia Properties. There are a lot of useful configuration there, usually they are also needed only for 
    devops, but sometimes you can set here link to resource folder, or repository, to log4j configuration
     
 * /src/main/webapp/WEB-INF/config/magnoliaAuthor/magnolia.properties
    
    magnoliaAuthor is a context path here, where project runs on the Tomcat
    
    Properties from this file will override properties from file in default folder.
    
 * /src/main/webapp/WEB-INF/config/magnoliaPublic/magnolia.properties
    
    The same as magnoliaAuthor but for magnoliaPublic context path.
    
 * /src/main/webapp/WEB-INF/config/repo-conf
 
    This folder contains the configuration for data sources. Filebased Derby database is used by default
    
    It's highly recommended on production to change it to mysql or postgresql. This can be done 
    by setting a property magnolia.repositories.jackrabbit.config
    
    
#### jobcase-main

 This is the main module for development. All common things: components, templates, pages, dialogs should be located here.
 
 If you feel, that some things could be separated, like, for example, payment module, it's better to create a new module, 
 and place all relative files and classes there to do not mix up all stuff.
 
 If you will be creating Magnolia Apps, it's highly recommended to use separated module for that.
 

 **TODO: module structure** 

#### jobcase-theme

This is theme module. All frontend stuff should be placed here. 

If you use some frontend technologies for building page prototypes, put everything inside **/src/main/frontend folder**.
You can use NPM, webpacks, react, angular and so on: use them here. And create a scripts which will place built bundle files 
inside /src/main/resources/jobcase-theme folder.

 **TODO: module structure** 



