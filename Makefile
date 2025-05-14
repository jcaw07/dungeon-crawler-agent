# Inform compiler paths (can be overridden via environment variables)
INFORM_APP ?= /Applications/Inform.app
INFORM_BIN ?= $(INFORM_APP)/Contents/MacOS/ni
INFORM_INTERNAL ?= $(INFORM_APP)/Contents/Resources/Internal

# User-specific paths (can be overridden via environment variables)
INFORM_EXTERNAL ?= $(HOME)/Library/Inform
PROJECT_PATH ?= $(shell pwd)/src/dungeon/Clockwork.inform
OUTPUT_FORMAT ?= z8
OUTPUT_FILE ?= dungeon.$(OUTPUT_FORMAT)

.PHONY: build clean

build:
	sed -i '' 's/    /\t/g' $(PROJECT_PATH)/Source/story.ni
	$(INFORM_BIN) "-internal" "$(INFORM_INTERNAL)" "-external" "$(INFORM_EXTERNAL)" "-project" "$(PROJECT_PATH)" "-format=$(OUTPUT_FORMAT)"
	@echo "Built $(OUTPUT_FILE)"

clean:
	rm -f $(OUTPUT_FILE)
