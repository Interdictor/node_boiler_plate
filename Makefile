up:
	docker-compose up --build

run:
	docker-compose run --rm boiler $(args)

down:
	docker-compose down

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
