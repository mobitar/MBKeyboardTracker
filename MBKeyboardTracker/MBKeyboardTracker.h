//
//  MBKeyboardTracker.h
//
//  Created by Mo Bitar on 2/17/14.
//  Copyright (c) 2014 progenius. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MBKeyboardTrackerDelegate <NSObject>

@optional

- (void)keyboardTrackerKeyboardOriginDidChange:(CGPoint)origin;

- (void)keyboardTrackerKeyboardWillAppear:(UIView *)keyboard;

- (void)keyboardTrackerKeyboardDidAppear:(UIView *)keyboard;

- (void)keyboardTrackerKeyboardWillDisappear:(UIView *)keyboard;

- (void)keyboardTrackerKeyboardDidDisappear:(UIView *)keyboard;

@end

@interface MBKeyboardTracker : NSObject

@property (nonatomic, weak) id<MBKeyboardTrackerDelegate> delegate;

+ (void)beginTracking;

+ (instancetype)sharedInstance;

+ (UIView *)keyboard;

@end

