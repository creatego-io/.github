### Fetch and pull all repositories

echo "---Fetching and pulling all repositories---"

echo "START BACKEND"
# shellcheck disable=SC2164
cd backend
git fetch
git pull
echo "END BACKEND\n"

echo "START FRONTEND"
# shellcheck disable=SC2164
cd ../ide
git fetch
git pull
echo "END FRONTEND\n"

echo "START PACKAGES"
# shellcheck disable=SC2164
cd ../packages
git fetch
git pull
echo "END PACKAGES"

#echo "START STARTER_APP"
## shellcheck disable=SC2164
#cd ../starter_app
#git fetch
#git pull
#echo "END STARTER_APP\n"
#
#echo "START HOMEPAGE"
## shellcheck disable=SC2164
#cd ../creatego_home
#git fetch
#git pull
#echo "END HOMEPAGE\n"
#
#echo "START Creatego IDE"
## shellcheck disable=SC2164
#cd ../creatego_ide
#git fetch
#git pull
#echo "END Creatego IDE\n"




