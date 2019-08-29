//
//  main.m
//  New11
//
//  Created by rossbutler on 3/6/19.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "BinaryTree.h"
#import "IterativeBinaryTree.h"
#import "RecursiveBinaryTree.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Node *rootNode = [[Node alloc] initWithValue: @"A"];
        Node *nodeB = [[Node alloc] initWithValue: @"B"];
        Node *nodeC = [[Node alloc] initWithValue: @"C"];
        rootNode.lhs = nodeB;
        rootNode.rhs = nodeC;
        Node *nodeD = [[Node alloc] initWithValue: @"D"];
        Node *nodeE = [[Node alloc] initWithValue: @"E"];
        nodeB.lhs = nodeD;
        nodeB.rhs = nodeE;
        Node *nodeF = [[Node alloc] initWithValue: @"F"];
        Node *nodeG = [[Node alloc] initWithValue: @"G"];
        nodeC.lhs = nodeF;
        nodeC.rhs = nodeG;
        
        
        id<BinaryTree> tree = [[RecursiveBinaryTree alloc] initWithRootNode:rootNode];
        NSLog(@"%ld", (long)[tree longestBranchLength]);
        [tree print];
        [tree reverse];
        [tree print];
    }
    return 0;
}
