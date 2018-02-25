test:
	@echo ""
	@echo "make test-ios               Test sample for iOS"
	@echo "make test-android           Test sample for Android"
	@echo "make test-ios-safari        Test sample for iOS Safari"
	@echo "make test-android-chrome    Test sample for Android Chrome"
	@echo "make test-desktop-chrome    Test sample for Desktop PC"
	@echo "make simple-reporter        Test sample for PC with simple reporter"
test-ios:
	# platform=ios macaca run --verbose --reporter macaca-reporter -d ./src/desktop_chrome.test.js
test-android:
	# platform=android macaca run --verbose --reporter macaca-reporter -d ./src/desktop_chrome.test.js
test-ios-safari:
	browser=safari macaca run --verbose --reporter macaca-reporter -d ./src/ios_safari.test.js
test-android-chrome:
	browser=chrome macaca run --verbose --reporter macaca-reporter -d ./src/android_chrome.test.js
test-desktop-chrome:
	browser=chrome macaca run --verbose --reporter macaca-reporter -d ./src/desktop_chrome.test.js
