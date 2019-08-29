//
//  RecursiveBinaryTree.m
//  BinaryTrees
//
//  Created by Ross Butler on 3/7/19.
//

#import "RecursiveBinaryTree.h"
#import "Node.h"

@interface RecursiveBinaryTree ()

@property (nonatomic, strong) Node *rootNode;

@end

@implementation RecursiveBinaryTree

- (nonnull instancetype)initWithRootNode:(nonnull Node *)node {
    self = [super init];
    if(self != nil) {
        self.rootNode = node;
    }
    return self;
}

- (NSInteger)longestBranchLength {
    return [self longestBranchLength:self.rootNode];
}

-(NSInteger)longestBranchLength:(Node *)node {
    NSInteger result = 0;
    if(node.lhs != nil) {
        NSInteger lhsBranchLength = [self longestBranchLength:node.lhs] + 1;
        if(lhsBranchLength > result) {
            result = lhsBranchLength;
        }
    }
    if(node.rhs != nil) {
        NSInteger rhsBranchLength = [self longestBranchLength:node.rhs] + 1;
        if(rhsBranchLength > result) {
            result = rhsBranchLength;
        }
    }
    return result;
}

-(void)print {
    NSLog(@"Not yet implemented.");
}

-(void)reverse {
    [self reverseChildNodes: self.rootNode];
}

-(void)reverseChildNodes:(Node *)node {
    Node *rhs = node.lhs;
    node.lhs = node.rhs;
    node.rhs = rhs;
    if(node.lhs != nil) {
        [self reverseChildNodes:node.lhs];
    }
    if(node.rhs != nil) {
        [self reverseChildNodes:node.rhs];
    }
}

@end
