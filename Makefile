.PHONY: help analyze format fix test build-runner publish publish-dry clean

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# === Analysis & Formatting ===

analyze: ## Run dart analyze
	dart analyze

format: ## Format code
	dart format .

fix: ## Apply dart fix
	dart fix --apply

# === Testing ===

test: ## Run tests
	flutter test

# === Code Generation ===

build-runner: ## Run build_runner
	dart run build_runner build --delete-conflicting-outputs

watch: ## Run build_runner in watch mode
	dart run build_runner watch --delete-conflicting-outputs

# === Publishing ===

publish-dry: ## Dry run publish to pub.dev
	dart pub publish --dry-run

publish: ## Publish to pub.dev
	dart pub publish

# === Pre-publish Checklist ===

pre-publish: format fix analyze test ## Run all checks before publishing
	@echo "✅ All checks passed! Ready to publish."

# === Cleanup ===

clean: ## Clean build artifacts
	flutter clean
	rm -rf .dart_tool
	rm -rf build

# === Dependencies ===

get: ## Get dependencies
	flutter pub get

upgrade: ## Upgrade dependencies
	flutter pub upgrade

outdated: ## Check for outdated dependencies
	flutter pub outdated
