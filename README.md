# radiuscdr

[![Latest Stable Version](https://poser.pugx.org/streitleak/radiuscdr/v)](//packagist.org/packages/streitleak/radiuscdr) [![Total Downloads](https://poser.pugx.org/streitleak/radiuscdr/downloads)](//packagist.org/packages/streitleak/radiuscdr) [![Latest Unstable Version](https://poser.pugx.org/streitleak/radiuscdr/v/unstable)](//packagist.org/packages/streitleak/radiuscdr) [![License](https://poser.pugx.org/streitleak/radiuscdr/license)](//packagist.org/packages/streitleak/radiuscdr)

Requirement  
   PHP 7.0.0 up  
   Composer 2.0 up  
   Docker 20.10 up  

Suggest OS: ubuntu 20.04

Installion Guide  

1. Install docker,php  
   apt-get update && apt-get install nano docker unzip php php-mbstring php-xml php-mysql php-zip php-mysql php-curl docker-compose -y && apt-get-upgrade -y 
2. Install composer  
   php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"  
   php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"  
   php composer-setup.php --install-dir=/bin --filename=composer  
   php -r "unlink('composer-setup.php');"  
4. go to /vaw/www folder  
   cd /var/www  
3. clone radiuscdr in /var/www folder  
   composer create-project streitleak/radiuscdr  
4. replace WORKDIR  
   rm -rf /var/www/html && ln -s /var/www/radiuscdr/public /var/www/html  
5. go to radiuscdr folder  
   cd radiuscdr  
6. Edit .env file  
   modify Database settings and save  
7. update project  
   composer update 
8. Start Services  
   docker-compose up -d  
9. Check Services  
   docker-compose ps
   ![image](https://user-images.githubusercontent.com/996923/113178903-9ef19100-9281-11eb-81b4-225c4475411a.png)
   PS: if showing restarting, that container image need to rebuild. Call Support.
10. Project Publish  
   php artisan vendor:publish --all
11. upgrade project  
   php artisan migrate   
   
   
   
