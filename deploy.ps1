npm run build
cd dist
git init
git add -A
git commit -m "deploy"
git push -f https://github.com/marlip/vue-counter.git master:gh-pages
cd ..