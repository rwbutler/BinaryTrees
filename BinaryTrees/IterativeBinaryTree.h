//
//  IterativeBinaryTree.h
//  BinaryTrees
//
//  Created by Ross Butler on 3/7/19.
//

#import <Foundation/Foundation.h>
#import "BinaryTree.h"

NS_ASSUME_NONNULL_BEGIN

@class Node;

@interface IterativeBinaryTree : NSObject <BinaryTree>

-(instancetype)initWithRootNode:(Node *)node;
-(void)print;
-(void)reverse;

@end

NS_ASSUME_NONNULL_END
