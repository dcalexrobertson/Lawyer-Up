//
//  Lawyer.m
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Lawyer.h"

@implementation Lawyer

- (instancetype)initWithName:(NSString *)name withPractice:(Practice *)practice withSpecialty:(Specialty)specialty
{
    self = [super init];
    if (self) {
        
        _name = name;
        _practice = practice;
        _specialty = specialty;
        
    }
    return self;
}

- (void)addClient:(Client *)client
{
    
    [self.delegate addClientToClientList:client forLawyer:self];
    
}

- (int)getPayableAmountForClient:(Client *)client
{
    
    return [self.delegate payableAmountForClient:client forLawyer:self];
        
}



@end
