## shellcheck disable=SC2028
#echo "\n-----COMMITTING backend-----\n"
#sh combackend.sh
# shellcheck disable=SC2028
echo "\n-----COMMITTING ide-----\n"
sh comide.sh
# shellcheck disable=SC2028
echo "\n-----COMMITTING packages-----\n"
sh compackages.sh
## shellcheck disable=SC2028
#echo "\n-----COMMITTING starter app-----\n"
#sh comstarterapp.sh
## shellcheck disable=SC2028