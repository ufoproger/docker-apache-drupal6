CURRENT_DIRECTORY := $(shell pwd)

build:
	@docker build --tag=ufoproger/apache-drupal6 $(CURRENT_DIRECTORY)

.PHONY: build
