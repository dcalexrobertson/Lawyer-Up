//
//  Client.m
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Client.h"

@implementation Client

- (instancetype)initWithName:(NSString *)name withProblem:(NSString *)problem withSpecialty:(Specialty)specialty
{
    self = [super init];
    if (self) {
        _name = name;
        _problem = problem;
        _specialty = specialty;
    }
    return self;
}

@end
