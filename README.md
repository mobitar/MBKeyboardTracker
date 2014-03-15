Easily subscribe to keyboard origin updates and appearance updates.

![GIF](http://i.imgur.com/X1Poa3x.gif)

##Instructions:

In your AppDelegate's `application:didFinishLaunchingWithOptions:` method, do

	[MBKeyboardTracker beginTracking];

*after* window setup.

Then, where ever you want, subscribe to `MBKeyboardTracker`'s delegate method via:

	[MBKeyboardTracker sharedInstance] addDelegate:id<MBKeyboardTrackerDelegate>];

and listen for 

	- (void)keyboardTrackerKeyboardOriginDidChange:(CGPoint)origin;

See the demo project for an example.


Delegate methods also available:

	- (void)keyboardTrackerKeyboardWillAppear:(UIView *)keyboard;
	
	- (void)keyboardTrackerKeyboardDidAppear:(UIView *)keyboard;
	
	- (void)keyboardTrackerKeyboardWillDisappear:(UIView *)keyboard;
	
	- (void)keyboardTrackerKeyboardDidDisappear:(UIView *)keyboard;
	
	
###Contact
Mo Bitar - [email](me@bitar.io) or [tweet](http://twitter.com/bitario) me for questions.