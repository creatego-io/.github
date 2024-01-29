# shellcheck disable=SC2164
cd creatego_home/
# Delete all files and folders from homepage
rm -rf *
# shellcheck disable=SC2164
cd ../starter_app/
flutter build web --no-tree-shake-icons --dart-define=SUPABASE_URL=https://ofyngtjccmbxofnztary.supabase.co --dart-define=SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9meW5ndGpjY21ieG9mbnp0YXJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI0MzcyMzYsImV4cCI6MjAxODAxMzIzNn0.c3oJ3CENN5hWSpvcB5ev7BJBC2SsqhPB4OTFU39RqYM
# Copy build/web to ../homepage
cp -r build/web/* ../creatego_home/

# shellcheck disable=SC2103
cd ..

sh comcghome.sh

