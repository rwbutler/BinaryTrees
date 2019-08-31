//
//  BinaryTree.h
//  BinaryTrees
//
//  Created by Ross Butler on 3/7/19.
//

NS_ASSUME_NONNULL_BEGIN

@class Node;

@protocol BinaryTree

-(instancetype)initWithRootNode:(Node *)node;
-(void)print;
-(void)reverse;

@end

NS_ASSUME_NONNULL_END

