//
//  Associate.m
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Associate.h"
#import "Lawyer.h"
#import "Client.h"

@implementation Associate

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer
{
    
    [lawyer.clientList addObject:client];
    
}

-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer
{
    int hours;
    int rate;
    
    if ([client.problem length] < 10) {
        hours = 5;
    } else if (10 <= [client.problem length] && [client.problem length] <= 20) {
        hours = 10;
    } else if ([client.problem length] > 20) {
        hours = 25;
    }
    
    NSNumber *specialty = [NSNumber numberWithInt:client.specialty];
    
    rate = [[lawyer.practice.specialtyRates objectForKey:specialty] intValue];
    
    return rate * hours;
    
}

@end
