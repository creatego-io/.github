cd backend/backend_server
#Copy /config/, /deploy/, /generated/ and /lib/ folders
cp -r config/* ../../gitlab/backend/backend_server/
cp -r deploy/* ../../gitlab/backend/backend_server/
cp -r generated/* ../../gitlab/backend/backend_server/
cp -r lib/* ../../gitlab/backend/backend_server/



#cd gitlab/backend
#git add .
#git commit -m "Update gitlab backend"
#git push