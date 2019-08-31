//
//  Node.h
//  BinaryTrees
//
//  Created by Ross Butler on 3/6/19.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property(nullable, nonatomic, strong) Node *lhs;
@property(nullable, nonatomic, strong) Node *rhs;

- (nonnull instancetype)initWithValue:(nonnull NSString *)value;

@end
