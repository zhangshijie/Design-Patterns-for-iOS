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
#import "Dot1.h"
#import "Stroke1.h"
#import "Vertex1.h"
#import "Dot2.h"
#import "Stroke2.h"
#import "Vertex2.h"
#import "MarkVistor.h"
#import "MarkRender.h"
#import "ImageCompent.h"
#import "ImageShadowFilter.h"
#import "ImageTransformFilter.h"
#import "Attack.h"
#import "Attacks1.h"
#import "Attacks2.h"
#import "AttackHandler.h"
#import "AttackHandler1.h"
#import "AttackHandler2.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
//	//Composite 模式 将对象组合成树形结构以表示“部分-整体”的层次结构，组合使得用户对单个对象和组合对象的使用更具有一致性。
//    //组建Composite
//    Dot *aDot = [[Dot alloc] init];
//    Stroke *aStroke = [[Stroke alloc ] init];
//    [aStroke addMark:aDot];
//    
//    Vertex *aVertex = [[Vertex alloc]init];
//    Stroke *newStroke = [[Stroke alloc]init];
//    [newStroke addMark:aVertex];
//    
//    [aStroke addMark:newStroke];
    
//    //Iterator模式
//    //组建Composite
//    Dot1 *aDot1 = [[Dot1 alloc] init];
//    Stroke1 *aStroke1 = [[Stroke1 alloc ] init];
//    aDot1.tag=11;
//    aStroke1.tag=12;
//    
//    [aStroke1 addMark:aDot1];
//    
//    Vertex1 *aVertex1 = [[Vertex1 alloc]init];
//    Stroke1 *newStroke1 = [[Stroke1 alloc]init];
//    aVertex1.tag=21;
//    newStroke1.tag=22;
//    
//    [newStroke1 addMark:aVertex1];
//    
//    [aStroke1 addMark:newStroke1];
//    //通过外部迭代器
//    NSEnumerator *enumerator = [aStroke1 enumerator];
//    do {
//        id <Mark1> currentMark1= enumerator.nextObject;
//        NSLog(@"%d",[currentMark1 tag]);
//        
//    } while (enumerator.nextObject);

    
//    //visitor模式
//    //组建Composite
//    Dot2 *aDot2 = [[Dot2 alloc] init];
//    Stroke2 *aStroke2 = [[Stroke2 alloc ] init];
//    [aStroke2 addMark:aDot2];
//    
//    Vertex2 *aVertex2 = [[Vertex2 alloc]init];
//    Stroke2 *newStroke2 = [[Stroke2 alloc]init];
//
//    [newStroke2 addMark:aVertex2];
//    [aStroke2 addMark:newStroke2];
//    //实例化visitor
//    id <MarkVistor> *v= [[MarkRender alloc]init];
//    [newStroke2 acceptMarkVisitor:v];
//    NSLog(@"here");
//    //Decorator模式
//    UIImage *image = [UIImage imageNamed:@"Image.png"];
//    
//    // create a tra2nsformation
//    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
//    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0, 
//                                                                            image.size.height / 8.0);
//    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
//    
//    id <ImageCompent> transformedImage = [[ ImageTransformFilter alloc]initWithImageCompent:image :finalTransform];
//    id <ImageCompent> finalImage =[[ImageShadowFilter alloc]initWithImageCompent:transformedImage];
//    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
//    [imageView setImage:finalImage];
//    [self.view addSubview:imageView];

    //ChainOfResponsibility模式
    
    
    Attack *attack1 = [[Attacks1 alloc] init];
    Attack *attack2 = [[Attacks2 alloc] init];
    
    AttackHandler *AttackHandler1 = [[AttackHandler1 alloc] init];
    AttackHandler *AttackHandler2 = [[AttackHandler2 alloc] init];
    AttackHandler1.nextHandler= AttackHandler2;
    
    [AttackHandler1 handle:attack1];
    [AttackHandler1 handle:attack2];
    
    [super viewDidLoad];
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
