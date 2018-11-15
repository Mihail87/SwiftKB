/*:
 ## Unknown class <class_name> in Interface Builder
 [Dev KB](Dev%20KB) > Errors & Issues >
 
 > I had a custom class ViewController - and it was not executing the code in viewDidLoad
 Also there was a warning in the output "Unknown class <class_name> in Interface Builder"
 
 [Stack Overflow: Unknown Class in Interface Builder](https://stackoverflow.com/questions/38846538/unknown-class-in-interface-builder/43423936)
 
 > The fix was to check the "Inherit Module from Target" in the Main.storyboard.
 Before it was blank.
 */
