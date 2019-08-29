//
//  Node.h
//  BinaryTrees
//
//  Created by Ross Butler on 3/6/19.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property(nonatomic, strong) Node *lhs;
@property(nonatomic, strong) Node *rhs;

- (instancetype)initWithValue:(NSString *)value;

@end
