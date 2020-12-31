
EXTEND= AA BB CC
BUILD_DIR=build
.PHONY: main
main: $(EXTEND)

.PHONY: $(EXTEND)
$(EXTEND): $(BUILD_DIR)/bin/%
	@echo $@

$(BUILD_DIR)/bin/%:
	@echo "DDDDDDDDDD"