.SILENT: fmt
.PHONY: fmt
fmt:
	terraform $@ -recursive -diff

.SILENT: fmt_check
.PHONY: fmt_check
fmt_check:
	terraform fmt -check

.SILENT: init
.PHONY: init
init:
	terraform $@

.SILENT: plan
.PHONY: plan
plan:
	terraform $@

.SILENT: apply
.PHONY: apply
apply:
	terraform $@ -auto-approve

.SILENT: docs
.PHONY: docs
docs:
	terraform-docs .

.SILENT: docs_check
.PHONY: docs_check
docs_check:
	terraform-docs --output-check .
