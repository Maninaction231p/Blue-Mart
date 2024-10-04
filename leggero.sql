CREATE DATABASE leggero;

USE leggero;

CREATE TABLE user (                                     
          uid int(24) NOT NULL auto_increment,                  
          full_name varchar(320) NOT NULL,                      
          email varchar(320) NOT NULL,                          
          password varchar(320) NOT NULL,                       
          mobile double NOT NULL,                               
          security_question varchar(320) NOT NULL,              
          security_answer varchar(320) NOT NULL,                
          registered_date datetime NOT NULL,                    
          total_money_spent varchar(320) default '0',           
          PRIMARY KEY  (email),                                 
          UNIQUE KEY uid (uid)                                
        )

CREATE TABLE products (                                 
            id int(11) NOT NULL auto_increment,                   
            name varchar(100) NOT NULL,                           
            price decimal(10,2) NOT NULL,                         
            description varchar(5000) default NULL,               
            image varchar(2000) default NULL,                     
            category varchar(100) default NULL,                   
            quantity decimal(11,0) default '10',                  
            timeadded datetime default NULL,                      
            PRIMARY KEY  (id)                                     
          )

CREATE TABLE address (                                                     
           id int(11) NOT NULL auto_increment,                                      
           email varchar(320) NOT NULL,                                             
           added_date datetime NOT NULL,                                            
           land_mark varchar(500) NOT NULL,                                         
           street varchar(500) NOT NULL,                                            
           address varchar(500) NOT NULL,                                           
           city varchar(100) NOT NULL,                                              
           state varchar(100) NOT NULL,                                             
           PRIMARY KEY  (id),                                                       
           KEY FK_address (email),                                                
           CONSTRAINT FK_address FOREIGN KEY (email) REFERENCES user (email)  
         )

CREATE TABLE cart (                                                                                         
          id int(11) NOT NULL auto_increment,                                                                       
          product_id int(11) default NULL,                                                                          
          quantity int(11) default NULL,                                                                            
          email varchar(255) NOT NULL,                                                                              
          addedtime datetime default NULL,                                                                          
          PRIMARY KEY  (id),                                                                                        
          KEY product_id (product_id),                                                                            
          KEY FK_cart (email),                                                                                    
          CONSTRAINT cart_ibfk_1 FOREIGN KEY (product_id) REFERENCES products (id),                           
          CONSTRAINT FK_cart FOREIGN KEY (email) REFERENCES user (email) ON DELETE CASCADE ON UPDATE CASCADE  
        )
