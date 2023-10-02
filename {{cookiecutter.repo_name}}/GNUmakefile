LISP := sbcl
LISP_OPTIONS := --noinform --no-sysinit

.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: run
run: ## Run the project
	rlwrap \
	$(LISP) $(LISP_OPTIONS) \
		--load run.lisp

.PHONY: build
build:  ## Produce executable file
	$(LISP)	$(LISP_OPTIONS) \
		--non-interactive \
		--load build.lisp

.PHONY: test
test: ## Run tests
	$(LISP) $(LISP_OPTIONS) \
		--non-interactive \
		--load run-tests.lisp
