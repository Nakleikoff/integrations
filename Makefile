Cyan=\033[0;36m
NC=\033[0m
URL = $(subst .git,,$(subst git@github.com:,https://github.com/,$(shell git config --get remote.origin.url)))
REV = $(shell git rev-parse HEAD)

all:
	@echo "Hello Makefile"

deploy:
	@echo "${Cyan}Release${NC}"
	@echo "${Cyan}$(URL)${NC}"
