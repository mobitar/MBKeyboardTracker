Easily subscribe to keyboard origin updates.

![GIF](http://i.imgur.com/X1Poa3x.gif)

##Instructions:

In your AppDelegate's `application:didFinishLaunchingWithOptions:` method, do

```[MBKeyboardRetriever retrieve];```

after window setup.

Then subscribe to MBKeyboardRetriever's delegate method via:

```[MBKeyboardRetriever sharedInstance] setDelegate:<object>];```

and listen for 

```- (void)keyboardRetrieverKeyboardOriginDidChange:(CGPoint)origin;```

See the demo project for an example.