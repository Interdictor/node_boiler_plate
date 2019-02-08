awake:
	docker-compose up --build && \
	docker-compose run applicative yarn install

run:
	docker-compose run --rm applicative $(args)

down:
	docker-compose down

lock:
	docker-compose run --rm applicative yarn install

test:
	docker-compose run --rm applicative yarn test

logs:
	docker-compose logs

build:
	docker-compose build

clean:
	git clean -fdx
