//
//  Practice.m
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Practice.h"

@implementation Practice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _specialtyRates = @{[NSNumber numberWithInt:(Specialty)FamilyLaw]: @200.00,
                            [NSNumber numberWithInt:(Specialty)PatentLaw]: @380.50,
                            [NSNumber numberWithInt:(Specialty)CriminalLaw]:@405.99,
                            [NSNumber numberWithInt:(Specialty)CorporateLaw]: @400.00};

    }
    return self;
}

@end
