//
//  Node.m
//  BinaryTrees
//
//  Created by Ross Butler on 3/6/19.
//

#import "Node.h"

@interface Node()

@property(nonatomic, strong) NSString *value;

@end

@implementation Node

@synthesize value = _value;

- (instancetype)initWithValue:(NSString *)value
{
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

- (NSString *)description
{
    return _value;
}

@end
