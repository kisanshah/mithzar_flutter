format:
	dart format .

android-build:
	fvm flutter build apk --release

.PHONY: build-dev-apk
build-dev-apk:
	flutter build apk --flavor development --dart-define=FLAVOR=development --target lib/main.dart

.PHONY: build-runner
build-runner:
	fvm flutter packages pub run build_runner build

.PHONY: build-runner-delete
build-runner-delete:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: format-analyze
format-analyze:
	flutter format lib/
	flutter analyze

.PHONY: get
get:
	flutter pub get

.PHONY: build-dev-apk
build-dev-apk:
	flutter build apk --flavor development --dart-define=FLAVOR=development --target lib/main.dart

.PHONY: build-prd-apk
build-prd-apk:
	flutter build apk --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart