//
//  ViewController.m
//  Objc2Swift
//
//  Created by Thamil Selvan V on 11/10/16.
//  Copyright © 2016 Thamil Selvan V. All rights reserved.
//

#import "HomeViewController.h"
#import "ObjcMath.h"
#import "Objc2Swift-Swift.h"
#import "ObjcViewController.h"

@interface HomeViewController () {
    UIButton *showObjcView;
    UIButton *showSwiftView;
}

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Home View";
    self.view.backgroundColor = [UIColor colorWithRed:0.67f green:0.87f blue:0.56f alpha:1.f];
    
    showObjcView = [UIButton buttonWithType:UIButtonTypeCustom];
    showObjcView.backgroundColor = [UIColor colorWithRed:0.56 green:0.56 blue:0.56f alpha:1.f];
    showObjcView.translatesAutoresizingMaskIntoConstraints = NO;
    [showObjcView setTitle:@"Show ObjcView" forState:UIControlStateNormal];
    [showObjcView.titleLabel setTextColor:[UIColor blackColor]];
    [showObjcView addTarget:self action:@selector(showObjcView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showObjcView];
    
    NSLayoutConstraint *centerX = [NSLayoutConstraint constraintWithItem:showObjcView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0];
    NSLayoutConstraint *centerY = [NSLayoutConstraint constraintWithItem:showObjcView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.f constant:-75];
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:showObjcView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:300];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:showObjcView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:50];
    [self.view addConstraints:@[centerX,centerY,width,height]];
    
    showSwiftView = [UIButton buttonWithType:UIButtonTypeCustom];
    showSwiftView.backgroundColor = [UIColor colorWithRed:0.56 green:0.56 blue:0.56f alpha:1.f];
    showSwiftView.translatesAutoresizingMaskIntoConstraints = NO;
    [showSwiftView setTitle:@"Show SwiftView" forState:UIControlStateNormal];
    [showSwiftView.titleLabel setTextColor:[UIColor blackColor]];
    [showSwiftView addTarget:self action:@selector(showSwiftView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showSwiftView];
    
    centerX = [NSLayoutConstraint constraintWithItem:showSwiftView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0];
    centerY = [NSLayoutConstraint constraintWithItem:showSwiftView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.f constant:25];
    width = [NSLayoutConstraint constraintWithItem:showSwiftView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:300];
    height = [NSLayoutConstraint constraintWithItem:showSwiftView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:50];
    [self.view addConstraints:@[centerX,centerY,width,height]];
    
    /*ObjcMath *objcMath = [[ObjcMath alloc] init];
    SwiftMath *swiftMath = [[SwiftMath alloc] init];
    
    NSLog(@"objcAdd %i",(int)[objcMath add:30 :20]);
    NSLog(@"objc-callSwiftAdd %i",(int)[objcMath callSwiftAdd:60 :40]);
    
    NSLog(@"swiftAdd %i",(int)[swiftMath addWithA:30 b:20]);
    NSLog(@"swift-callObjcAdd %i",(int)[swiftMath callObjcAddWithA:60 b:40]);*/
}

-(void)showObjcView:(id)sender
{
    ObjcViewController *objcController = [[ObjcViewController alloc] init];
    [self.navigationController pushViewController:objcController animated:YES];
}

-(void)showSwiftView:(id)sender {
    SwiftViewController *swiftController = [[SwiftViewController alloc] init];
    [self.navigationController pushViewController:swiftController animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
