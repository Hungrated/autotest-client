test:
	@echo ""
	@echo "make test-ios               Test sample for iOS"
	@echo "make test-android           Test sample for Android"
	@echo "make test-ios-safari        Test sample for iOS Safari"
	@echo "make test-android-chrome    Test sample for Android Chrome"
	@echo "make test-desktop-chrome    Test sample for Desktop PC"
	@echo "make simple-reporter        Test sample for PC with simple reporter"
test-ios:
	macaca doctor
	platform=ios macaca run --verbose --reporter macaca-reporter -d ./macaca-test/mobile-app-sample.test.js
test-android:
	macaca doctor
	platform=android macaca run --verbose --reporter macaca-reporter -d ./macaca-test/mobile-app-sample.test.js
test-ios-safari:
	macaca doctor
	browser=safari macaca run --verbose --reporter macaca-reporter -d ./macaca-test/mobile-browser-sample.test.js
test-android-chrome:
	macaca doctor
	browser=chrome macaca run --verbose --reporter macaca-reporter -d ./macaca-test/mobile-browser-sample.test.js
test-desktop-chrome:
	macaca doctor
	CHROMEDRIVER_VERSION=2.33 browser=chrome macaca run --verbose --reporter macaca-reporter -d ./demo.test.js
