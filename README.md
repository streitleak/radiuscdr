# radiuscdr
   
Requirement  
   Git  
   PHP  
   Composer 2.0 up  
   Docker 20.10 up  

Installion Guide  

1. Install git, composer and docker on VM.  
   composer install guide:　https://getcomposer.org/doc/00-intro.md  
   git install guide: https://git-scm.com/book/zh-tw/v2/%E9%96%8B%E5%A7%8B-Git-%E5%AE%89%E8%A3%9D%E6%95%99%E5%AD%B8  
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
   
   
   
