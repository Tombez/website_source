# this is a tiny script to be ran after every upload to make sure that
# dynamic content continues to work when running my website
rm  -R public_html/*
mv 404.zip public_html 
#ok my options on this are as follows
#a solves the fossil reading the cgi script wrong due to incorrect line endings.
#o overwrites the htaccess that auto spawns on the server
unzip -ao public_html/404.zip  -d public_html/ 
chmod +x /home/jadonbel/public_html/cgi-bin/fossil.cgi