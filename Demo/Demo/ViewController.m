//
//  ViewController.m
//  Demo
//
//  Created by Mo Bitar on 2/18/14.
//  Copyright (c) 2014 progenius. All rights reserved.
//

#import "ViewController.h"
#import "MBKeyboardTracker.h"

@interface ViewController () <MBKeyboardTrackerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [[MBKeyboardTracker sharedInstance] setDelegate:self];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.view.window addSubview:self.label];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.textField becomeFirstResponder];
    });
}

#pragma mark - Keyboard Retriever Delegate

- (void)keyboardTrackerKeyboardOriginDidChange:(CGPoint)origin
{
    self.label.text = [NSString stringWithFormat:@"%.1f, %.1f", origin.x, origin.y];
}

@end
