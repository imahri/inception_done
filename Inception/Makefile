all:
	@mkdir -p ~/data/DB
	@mkdir -p ~/data/WordPress
	@docker compose -f ./srcs/docker-compose.yml up --build -d

down:
	@docker compose -f ./srcs/docker-compose.yml down -v

clean: 
	@docker compose -f ./srcs/docker-compose.yml down -v --rmi all

fclean: clean
	@sudo rm -rf ~/data/DB && sudo rm -rf ~/data/WordPress
