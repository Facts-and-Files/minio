.PHONY: help serve stop

# include .env
# export $(shell sed 's/=.*//' .env)

PWD := $(shell pwd)

serve:
	@cd $(PWD) && docker compose up -d
	@echo
	@echo "API running on http://localhost:9000"
	@echo "WebUI running on http://localhost:9001"
	@echo
	@echo "I'm up to no good..."
	@echo

stop:
	@echo
	@echo "Stopping all containers..."
	@cd $(PWD) && docker compose down
	@echo
	@echo "...mischief managed."
	@echo

help:
	@echo "Manage project"
	@echo ""
	@echo "Usage:"
	@echo "  $$ make [command]"
	@echo ""
	@echo "Commands:"
	@echo ""
	@echo "  $$ make serve"
	@echo "  Starting the servers"
	@echo ""
	@echo "  $$ make stop"
	@echo "  Stopping the servers"
	@echo ""
