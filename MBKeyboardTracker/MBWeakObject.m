//
//  MBWeakObject.m
//  Diveo
//
//  Created by Mo Bitar on 3/15/14.
//  Copyright (c) 2014 progenius. All rights reserved.
//

#import "MBWeakObject.h"

@implementation MBWeakObject
{
    __weak id nonretainedObjectValue;
    __unsafe_unretained id originalObjectValue;
}

- (id) initWithObject:(id) object {
    if (self = [super init]) {
        nonretainedObjectValue = originalObjectValue = object;
    }
    return self;
}

+ (instancetype) weakReferenceWithObject:(id) object {
    return [[self alloc] initWithObject:object];
}

- (id) nonretainedObjectValue { return nonretainedObjectValue; }

- (void *) originalObjectValue { return (__bridge void *) originalObjectValue; }

// To work appropriately with NSSet
- (BOOL) isEqual:(MBWeakObject *) object {
    if (![object isKindOfClass:[MBWeakObject class]]) return NO;
    return object.originalObjectValue == self.originalObjectValue;
}

@end
