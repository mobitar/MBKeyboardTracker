//
//  MBKeyboardRetriver.h
//
//  Created by Mo Bitar on 2/17/14.
//  Copyright (c) 2014 progenius. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MBKeyboardRetrieverDelegate <NSObject>

@optional

- (void)keyboardRetrieverKeyboardOriginDidChange:(CGPoint)origin;

- (void)keyboardRetrieverKeyboardWillAppear:(UIView *)keyboard;

- (void)keyboardRetrieverKeyboardDidAppear:(UIView *)keyboard;

- (void)keyboardRetrieverKeyboardWillDisappear:(UIView *)keyboard;

- (void)keyboardRetrieverKeyboardDidDisappear:(UIView *)keyboard;

@end

@interface MBKeyboardRetriever : NSObject

@property (nonatomic, weak) id<MBKeyboardRetrieverDelegate> delegate;

+ (void)retrieve;

+ (instancetype)sharedInstance;

@end

