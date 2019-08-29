//
//  RecursiveBinaryTree.h
//  BinaryTrees
//
//  Created by Ross Butler on 3/7/19.
//

#import <Foundation/Foundation.h>
#import "BinaryTree.h"

NS_ASSUME_NONNULL_BEGIN

@interface RecursiveBinaryTree : NSObject <BinaryTree>

-(instancetype)initWithRootNode:(Node *)node;
-(NSInteger)longestBranchLength;
-(void)print;
-(void)reverse;

@end

NS_ASSUME_NONNULL_END
