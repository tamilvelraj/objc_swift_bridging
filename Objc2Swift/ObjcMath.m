//
//  ObjcMath.m
//  Objc2Swift
//
//  Created by Thamil Selvan V on 11/10/16.
//  Copyright © 2016 Thamil Selvan V. All rights reserved.
//

#import "ObjcMath.h"
#import "Objc2Swift-Swift.h"

@implementation ObjcMath

-(NSInteger)add:(NSInteger)a :(NSInteger)b {
    return a+b;
}

-(NSInteger)callSwiftAdd:(NSInteger)a :(NSInteger)b
{
    SwiftMath *swiftmath = [[SwiftMath alloc] init];
    return [swiftmath addWithA:a b:b];
}

@end
