install:
	npm install

lint:
	npx stylelint ./src/css/**/*.scss
	npx htmlhint ./src/*.html

deploy:
	make sass
	npx surge --project ./src/ --domain  alk-music-box.surge.sh

sass:
	npx sass ./src/scss/app.scss ./src/css/style.css

sass-watch:
	npx sass --watch ./src/scss/app.scss:./src/css/style.css
