//
//  MBWeakObject.h
//  Diveo
//
//  Created by Mo Bitar on 3/15/14.
//  Copyright (c) 2014 progenius. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBWeakObject : NSObject

+ (instancetype)weakReferenceWithObject:(id)object;

- (id)nonretainedObjectValue;
- (void *)originalObjectValue;

@end
