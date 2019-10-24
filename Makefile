up:
	docker-compose up --build

run:
	docker-compose run --rm boiler $(args)

down:
	docker-compose down

bundle:
	docker-compose run --rm boiler npm run bundle

watch:
	docker-compose run --rm boiler npm run watch

lock:
	docker-compose run --rm boiler npm install --lock

test:
	docker-compose run --rm boiler npm test

logs:
	docker-compose logs

build:
	docker-compose build

clean:
	git clean -fdx

purge: clean
	docker system prune -f
