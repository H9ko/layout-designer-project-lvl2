install:
	npm install

lint:
	npx stylelint ./src/styles/**/*.scss
	npx htmlhint ./src/*.html

deploy:
	make sass
	npx surge --project ./src/ --domain  alk-music-box.surge.sh

sass:
	npx sass ./src/styles/scss/app.scss ./src/styles/style.css

sass-watch:
	npx sass --watch ./src/styles/scss/app.scss:./src/styles/style.css
