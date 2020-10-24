Steps to Reproduce:

1. Quit all running Xcodes.
2. Delete DerivedData folder.
3. Open Foo.xcworkspace in Xcode 12.0 (12A7209)
4. Immediately select QuxTests target.
5. Immediately build QuxTests for testing (command-shift-U)

If it doesn't cause Segmentation Fault 11 then repeat steps and make sure to build the project as quick as possible after opening Xcode.

Sometimes after failing on the first build, the second build will succeed, etc. Sometimes the first build succeeds. 

Very bizarre and frustrating intermittent bug.
