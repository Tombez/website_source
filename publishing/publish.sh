git add .
git commit 
git push
#makes getting the password easier
/d/portable\ applications/windows/keepass/keepass_classic/KeePass.exe &
Hugo --cleanDestinationDir --destination "public_html/"
rm -R ./public_html/*.ts # cut down on archive space
tar -zcvf 404.tgz public_html
# as security concern dont write the password here because it would be on git hub than anyone can access it.
scp 404.tgz jadonbel@jadonbelezos.com:/home/jadonbel/
ssh jadonbel@jadonbelezos.com "./deploy.sh"