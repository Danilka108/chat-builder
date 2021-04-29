# cd ../server
# npm run build
# cd ../client
# npm run build
# cd ../builder
 
if [ -d "app" ]; then rm -r app; fi
mkdir app

cd ..

cp -r client/dist/chat builder/app/client

cp -r server/dist builder/app
cp server/package.json builder/app
cp server/package-lock.json builder/app
cp builder/.prod.env builder/app/.env
cp builder/docker-compose.yml builder/app
cp builder/Dockerfile builder/app
cp builder/nginx.conf builder/app

cd builder/app
mkdir dhparam
sudo openssl dhparam -out dhparam/dhparam-2048.pem 2048