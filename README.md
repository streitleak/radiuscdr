# radiuscdr
   
Requirement  
   PHP 7.0.0 up
   Composer 2.0 up  
   Docker 20.10 up  

Installion Guide  

1. Install git, composer and docker on VM.  
   composer install guide:　https://getcomposer.org/doc/00-intro.md  
   docker install guide: https://runnable.com/docker/install-docker-on-linux  
2. create /opt folder  
   mkdir /opt  
3. go to /opt folder  
   cd /opt  
4. clone radiuscdr in /opt folder  
   composer create-project streitleak/radiuscdr  
5. go to radiuscdr folder  
   cd radiuscdr  
6. Edit .env file  
   modify Database settings and save  
8. update project  
   composer update  
7. upgrade project  
   php artisan migrate  
8. Start Services  
   docker-compose up -d  
9. Check Services  
   docker-compose ps
   ![image](https://user-images.githubusercontent.com/996923/113178903-9ef19100-9281-11eb-81b4-225c4475411a.png)
   PS: if showing restarting, need to restart all services again
10. Stop Services  
    docker-compose down
    all Services will be shutdown and remove. Database data will remain for next up.
11. 
   
   
   
