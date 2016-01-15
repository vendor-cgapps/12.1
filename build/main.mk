# build paths
TOPDIR := .
BUILD_SYSTEM := $(TOPDIR)/build
BUILD_GAPPS := $(BUILD_SYSTEM)/gapps.sh
OUTDIR := $(TOPDIR)/out
LOG_BUILD := /tmp/gapps_log

distclean :
	@rm -fr $(OUTDIR)
	@echo "$(tput setaf 2)Output removed! Ready for a clean build$(tput sgr 0)"

arm :
	@echo "Compiling GApps for arm..."
	@bash $(BUILD_GAPPS) arm 2>&1

arm64 :
	@echo "Compiling GApps for arm64..."
	@bash $(BUILD_GAPPS) arm64 2>&1

x86 :
	@echo "Compiling GApps for x86..."
	@bash $(BUILD_GAPPS) x86 2>&1
