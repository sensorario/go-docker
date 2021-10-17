up:
	docker-compose up -d --build

down:
	docker-compose down

build:
	docker build -t my-go-app .

bash:
	docker-compose exec app sh

deleteImage:
	docker rmi go-docker_app --force
