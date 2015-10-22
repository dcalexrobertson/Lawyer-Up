//
//  Practice.h
//  Lawyer Up
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Practice : NSObject

typedef enum specialty {
    FamilyLaw,
    CriminalLaw,
    PatentLaw,
    CorporateLaw
} Specialty;

@property (nonatomic) NSSet *lawyers;
@property (nonatomic) NSDictionary *specialtyRates;

@end
