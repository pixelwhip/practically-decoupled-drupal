CURRENT_DIR=$(shell pwd)
DOCKER_IMAGE=gabesullice/decoupled-drupal
DIST_DIR=$(CURRENT_DIR)/dist
WORKING_DIR=/usr/src/app
DOCKER_VOLUMES=-v $(CURRENT_DIR)/css:$(WORKING_DIR)/css -v $(CURRENT_DIR)/js:$(WORKING_DIR)/js -v $(CURRENT_DIR)/resources:$(WORKING_DIR)/resources -v $(CURRENT_DIR)/slides:$(WORKING_DIR)/slides -v $(CURRENT_DIR)/templates:$(WORKING_DIR)/templates -v $(CURRENT_DIR)/dist:$(WORKING_DIR)/dist
DOCKER_PORTS=-p 9000:9000 -p 35729:35729
DOCKER_CMD=docker run $(DOCKER_PORTS) $(DOCKER_VOLUMES) $(DOCKER_IMAGE)
NODE_MODULES=/usr/src/app/node_modules
NODE_CMD=$(DOCKER_CMD) node
GRUNT_CMD=$(NODE_CMD) $(NODE_MODULES)/grunt-cli/bin/grunt
BUILD_CMD=docker build -t $(DOCKER_IMAGE) .
CADDY_CMD=caddy

build:
	$(BUILD_CMD)

dist:
	$(GRUNT_CMD) dist
	make checksum

serve:
	$(CADDY_CMD) -root=$(DIST_DIR)

watch:
	while true; do make validate; sleep 1; done

validate:
	find $(CURRENT_DIR)/slides -type f | parallel -k cat | md5sum -c .watch || \
		make dist

checksum:
	find $(CURRENT_DIR)/slides -type f | parallel -k cat | md5sum -b > .watch

.PHONY: build dist serve watch validate checksum
