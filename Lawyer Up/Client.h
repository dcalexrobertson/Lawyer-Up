//
//  Client.h
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *problem;
@property Specialty specialty;

- (instancetype)initWithName:(NSString *)name withProblem:(NSString *)problem withSpecialty:(Specialty)specialty;


@end
