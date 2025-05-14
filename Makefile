# Inform compiler paths (can be overridden via environment variables)
INFORM_APP ?= /Applications/Inform.app
INFORM_NI_BIN ?= $(INFORM_APP)/Contents/MacOS/ni
INFORM_BIN = 
INFORM_INTERNAL ?= $(INFORM_APP)/Contents/Resources/Internal

# User-specific paths (can be overridden via environment variables)
INFORM_EXTERNAL ?= $(HOME)/Library/Inform
PROJECT_PATH ?= $(shell pwd)/src/dungeon/Clockwork.inform
OUTPUT_FORMAT ?= z8
OUTPUT_FILE ?= $(shell pwd)/games/dungeon.$(OUTPUT_FORMAT)

.PHONY: build clean

build:
	sed -i '' 's/    /\t/g' $(PROJECT_PATH)/Source/story.ni
	$(INFORM_NI_BIN) "-internal" "$(INFORM_INTERNAL)" "-external" "$(INFORM_EXTERNAL)" "-project" "$(PROJECT_PATH)" "-format=$(OUTPUT_FORMAT)"
	$(INFORM_APP)/Contents/MacOS/inform6 -kE2SDwv8 +include_path=/Applications/Inform.app/Contents/Resources/Library/6.11,.,../Source $(PROJECT_PATH)/Build/auto.inf $(PROJECT_PATH)/Build/output.z8 
	cp $(PROJECT_PATH)/Build/output.z8 $(OUTPUT_FILE)
	@echo "Built $(OUTPUT_FILE)"

clean:
	rm -f $(OUTPUT_FILE)
