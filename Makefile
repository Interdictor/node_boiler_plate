awake:
	docker-compose up --build

run:
	docker-compose run --rm applicative $(args)

down:
	docker-compose down

lock:
	docker-compose run --rm applicative npm install --lock

test:
	docker-compose run --rm applicative npm test

logs:
	docker-compose logs

build:
	docker-compose build

clean:
	git clean -fdx

purge: clean
	docker system prune -f
