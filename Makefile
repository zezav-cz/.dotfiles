STOW_DIR     := apps
TARGET_DIR   ?= $(HOME)
PACKAGES     := $(notdir $(wildcard $(STOW_DIR)/*))
STOW         := stow --dir=$(STOW_DIR) --target=$(TARGET_DIR)
COMMON_FLAGS := -v
code_FLAGS   := --no-folding
ssh_FLAGS    := --no-folding
zsh_FLAGS    := --no-folding --override=".zshrc"
.PHONY: all install uninstall restow list help

all: install
install: $(PACKAGES)

uninstall: $(addsuffix -uninstall, $(PACKAGES))
restow: $(addsuffix -restow, $(PACKAGES))

$(PACKAGES):
	@echo "Installing '$@'..."
	$(STOW) $(COMMON_FLAGS) $($@_FLAGS) $@

$(addsuffix -uninstall, $(PACKAGES)): %-uninstall:
	@echo "Uninstalling '$*'..."
	$(STOW) $(COMMON_FLAGS) -D $*

$(addsuffix -restow, $(PACKAGES)): %-restow:
	@echo "Restowing (re-installing) '$*'..."
	$(STOW) $(COMMON_FLAGS) -R $*

list:
	@echo "Available packages:"
	@$(foreach pkg,$(PACKAGES),echo "  - $(pkg)";)

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Global targets:"
	@echo "  install          Install all packages."
	@echo "  uninstall        Uninstall all packages."
	@echo "  restow           Re-install all packages."
	@echo "  list             List all available packages."
	@echo ""
	@echo "Individual package targets (replace 'pkg' with a package name from the list):"
	@echo "  make pkg         Install a specific package."
	@echo "  make pkg-uninstall Uninstall a specific package."
	@echo "  make pkg-restow    Re-install a specific package."
	@echo ""
	@echo "Example: 'make nvim' or 'make git-uninstall'"
