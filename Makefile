test_units:
	poetry run pytest tests/units/*

format_all: 
	poetry run black src/*
	poetry run black tests/*
	poetry run isort --filter-files tests/*
	poetry run isort --filter-files src/*

lint: 
	poetry run flake8 src tests

all: test_units format_all lint
