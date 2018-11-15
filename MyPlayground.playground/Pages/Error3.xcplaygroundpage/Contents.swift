/*:
 ## Error during build /usr/bin/codesign failed with exit code 1
 [Dev KB](Dev%20KB) > Errors & Issues >
 
 > When I wanted to run on the iPhone - it would throw an error during build /usr/bin/codesign failed with exit code 1.
 I spent hours looking for a fix, as I thought the certificate was the issue. However it’s a problem with the attributes.
 
 > Solution: Open terminal, go to the project folder and run:
 xattr -rc .
 
 /Users/mihaileonte/Documents/My Projects/Timely2/Carthage/Build/iOS
 
 */
