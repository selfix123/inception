CREATEPATH_VOL= /home/zbeaumon/data
MARIADB_VOL= $(CREATEPATH_VOL)/mariadb
WORDPRESS_VOL= $(CREATEPATH_VOL)/wordpress

$(MARIADB_VOL): $(CREATEPATH_VOL)
	mkdir -p $(MARIADB_VOL)

$(WORDPRESS_VOL): $(CREATEPATH_VOL)
	mkdir -p $(WORDPRESS_VOL)

$(CREATEPATH_VOL):
	mkdir -p $(CREATEPATH_VOL)

all: $(MARIADB_VOL) $(WORDPRESS_VOL) build up

build:
	docker compose -f "./srcs/docker-compose.yml" build

up:
	@docker compose -f "./srcs/docker-compose.yml" up

down:
	docker compose -f "./srcs/docker-compose.yml" down

start:
	docker compose -f ./srcs/docker-compose.yml start