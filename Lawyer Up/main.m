//
//  main.m
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"
#import "Practice.h"
#import "Client.h"
#import "Associate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        Practice *practice = [[Practice alloc] init];
        
        Lawyer *lawyer1 = [[Lawyer alloc] initWithName:@"Bob" withPractice:practice withSpecialty:FamilyLaw];
        Lawyer *lawyer2 = [[Lawyer alloc] initWithName:@"Bill" withPractice:practice withSpecialty:CorporateLaw];
        
        Associate *associate1 = [[Associate alloc] init];
        Associate *associate2 = [[Associate alloc] init];
        
        lawyer1.delegate = associate1;
        lawyer2.delegate = associate2;
        
        Client *client1 = [[Client alloc] initWithName:@"Frank" withProblem:@"Murder" withSpecialty:CriminalLaw];
        Client *client2 = [[Client alloc] initWithName:@"Heather" withProblem:@"Divorce" withSpecialty:FamilyLaw];
        
        [lawyer1 addClient:client1];
        [lawyer2 addClient:client2];
        
        int pay1 = [lawyer1 getPayableAmountForClient:client1];
        int pay2 = [lawyer2 getPayableAmountForClient:client2];
        
        NSLog(@"%@ owes %@ %d dollars.", client1.name, lawyer1.name, pay1);
        
        
        NSLog(@"%@ owes %@ %d dollars.", client2.name, lawyer2.name, pay2);

        
        
    }
    return 0;
}
