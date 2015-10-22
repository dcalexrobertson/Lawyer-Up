//
//  Lawyer.h
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Associate.h"

@interface Lawyer : NSObject 

@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *rate;
@property (nonatomic) NSMutableArray *clientList;
@property (nonatomic) Practice *practice;
@property (nonatomic) id <LawDelegate> delegate;
@property Specialty specialty;

- (instancetype)initWithName:(NSString *)name withPractice:(Practice *)practice withSpecialty:(Specialty)specialty;

- (void)addClient:(Client *)client;
- (int)getPayableAmountForClient:(Client *)client;


@end
