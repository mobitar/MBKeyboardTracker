Easily subscribe to keyboard origin updates.

![GIF](http://i.imgur.com/X1Poa3x.gif)

##Instructions:

In your AppDelegate's `application:didFinishLaunchingWithOptions:` method, do

	[MBKeyboardRetriever retrieve];

*after* window setup.

Then, where ever you want, subscribe to `MBKeyboardRetriever`'s delegate method via:

	[MBKeyboardRetriever sharedInstance] setDelegate:<object>];

and listen for 

	- (void)keyboardRetrieverKeyboardOriginDidChange:(CGPoint)origin;

See the demo project for an example.

<br>

Delegate methods also available:

	- (void)keyboardTrackerKeyboardWillAppear:(UIView *)keyboard;
	
	- (void)keyboardTrackerKeyboardDidAppear:(UIView *)keyboard;
	
	- (void)keyboardTrackerKeyboardWillDisappear:(UIView *)keyboard;
	
	- (void)keyboardTrackerKeyboardDidDisappear:(UIView *)keyboard;
	
	
###Contact
Mo Bitar - [email](me@bitar.io) or [tweet](http://twitter.com/bitario) me.