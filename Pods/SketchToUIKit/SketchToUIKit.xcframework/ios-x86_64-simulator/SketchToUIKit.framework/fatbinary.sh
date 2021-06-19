
#mkdir -p "/Users/bar/mypods/SmartUIKitFrameworks/ios"
#mkdir -p "/Users/bar/mypods/SmartUIKitFrameworks/iossimulator"
#the Build Libraries for Distribution build setting to Yes and the Skip Install (SKIP_INSTALL) build setting to No.

xcodebuild archive  -workspace SketchToUIKit-Pod.xcworkspace \
-scheme SketchToUIKit \
-destination "generic/platform=iOS" \
-archivePath "/Users/bar/mypods/SKetchToUIKitFrameworks/ios" \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive  -workspace SKetchToUIKit-Pod.xcworkspace \
-scheme SketchToUIKit \
-destination "generic/platform=iOS Simulator" \
-archivePath "/Users/bar/mypods/SketchToUIKitFrameworks/iossimulator" \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

#Export the framework or library from each archive and include any headers
rm -rf /Users/bar/mypods/SketchToUIKit.xcframework
PATHFORIOS="/Users/bar/mypods/SketchToUIKitFrameworks/ios.xcarchive"
PATHFORIOSSIMULATOR="/Users/bar/mypods/SketchToUIKitFrameworks/iossimulator.xcarchive"

xcodebuild -create-xcframework \
 -framework ${PATHFORIOS}/Products/Library/Frameworks/SketchToUIKit.framework \
 -framework ${PATHFORIOSSIMULATOR}/Products/Library/Frameworks/SketchToUIKit.framework \
 -output /Users/bar/mypods/SketchToUIKit.xcframework
#[-framework <path>...] -output <path>
#xcodebuild -create-xcframework -library <path>
#[-headers <path>] [-library <path> [-headers <path>]...] -output <path>
