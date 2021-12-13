.DEFAULT_GOAL=help

bootstrap: # Install dependencies via poetry
	@poetry install

migrate: # Migrate changes made to models
	@poetry run python manage.py makemigrations
	@poetry run python manage.py migrate

server: # Start Django development server
	@poetry run python manage.py runserver

clean: # Clean up cache files
	@find . -type f -name "*.py[co]" -delete
	@find . -type d -name "__pycache__" -delete

help: # Show this help
	@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
