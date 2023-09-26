format:
	dart format .

android-build-dev:
	fvm flutter build apk --flavor development --target lib/flavors/development.dart --dart-define=FLAVOR=development --release

build-runner:
	fvm flutter packages pub run build_runner build

generate-icon:
	flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons*

build-runner-delete:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs
	
build-runner-watch:
	fvm flutter packages pub run build_runner watch --delete-conflicting-outputs
