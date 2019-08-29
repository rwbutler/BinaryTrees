//
//  IterativeBinaryTree.m
//  BinaryTrees
//
//  Created by Ross Butler on 3/7/19.
//

#import "IterativeBinaryTree.h"
#import "Node.h"

@interface IterativeBinaryTree ()

@property (nonatomic, strong) Node *rootNode;

@end

@implementation IterativeBinaryTree

-(instancetype)initWithRootNode:(Node *)node {
    self = [super init];
    if (self) {
        self.rootNode = node;
    }
    return self;
}

-(NSInteger)longestBranchLength {
    NSInteger longestBranchResult = 0;
    NSMutableArray<Node *> *nodes = [NSMutableArray new];
    NSMutableArray<NSNumber *> *branchLengths = [NSMutableArray new];
    [nodes addObject:_rootNode];
    [branchLengths addObject:@0];
    while([nodes count] > 0) {
        Node *currentNode = [nodes firstObject];
        NSInteger branchLength = [[branchLengths firstObject] integerValue];
        [nodes removeObjectAtIndex:0];
        [branchLengths removeObjectAtIndex:0];
        if(currentNode.lhs != nil) {
            [nodes addObject:currentNode.lhs];
            [branchLengths addObject:@(branchLength + 1)];
        } else if(branchLength > longestBranchResult){
            longestBranchResult = branchLength;
        }
        if(currentNode.rhs != nil) {
            [nodes addObject:currentNode.rhs];
            [branchLengths addObject:@(branchLength + 1)];
        } else if(branchLength > longestBranchResult) {
            longestBranchResult = branchLength;
        }
    }
    return longestBranchResult;
}

-(void)print {
    NSLog(@"Not yet implemented.");
}

-(void)reverse {
    NSMutableArray<Node *> *nodes = [NSMutableArray new];
    [nodes addObject:_rootNode];
    while([nodes count] > 0) {
        Node *current = [nodes firstObject];
        [nodes removeObjectAtIndex:0];
        Node *rhs = current.lhs;
        current.lhs = current.rhs;
        current.rhs = rhs;
        if(current.lhs != nil) {
            [nodes addObject:current.lhs];
        }
        if(current.rhs != nil) {
            [nodes addObject:current.rhs];
        }
    }
}

@end
