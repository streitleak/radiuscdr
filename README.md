# radiuscdr
   
Requirement  
   PHP 7.0.0 up  
   Composer 2.0 up  
   Docker 20.10 up  

Suggest OS: ubuntu 20.04

Installion Guide  

1. Install docker,php  
   apt-get update && apt-get install nano docker unzip php php-mbstring php-xml php-mysql php-zip -y  
2. Install composer  
   php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"  
   php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"  
   php composer-setup.php --install-dir=/bin --filename=composer  
   php -r "unlink('composer-setup.php');"  
4. go to /opt folder  
   cd /opt  
3. clone radiuscdr in /opt folder  
   composer create-project streitleak/radiuscdr  
4. go to radiuscdr folder  
   cd radiuscdr  
5. Edit .env file  
   modify Database settings and save  
6. update project  
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
   
   
   
