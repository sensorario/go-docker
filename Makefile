up:
	docker-compose up -d

build:
	docker-compose up -d --build --remove-orphans

down:
	docker-compose down

bash:
	docker-compose exec app sh
