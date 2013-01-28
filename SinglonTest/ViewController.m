//
//  ViewController.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-25.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Dot.h"
#import "Stroke.h"
#import "Vertex.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	//Composite 模式 将对象组合成树形结构以表示“部分-整体”的层次结构，组合使得用户对单个对象和组合对象的使用更具有一致性。
    //组建Composite
    Dot *aDot = [[Dot alloc] init];
    Stroke *aStroke = [[Stroke alloc ] init];
    [aStroke addMark:aDot];
    
    Vertex *aVertex = [[Vertex alloc]init];
    Stroke *newStroke = [[Stroke alloc]init];
    [newStroke addMark:aVertex];
    
    [aStroke addMark:newStroke];
    
    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
