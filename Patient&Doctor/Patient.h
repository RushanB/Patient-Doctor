//
//  Patient.h
//  Patient&Doctor
//
//  Created by Rushan on 2017-05-04.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
#import "InputHandler.h"

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) NSArray *symptoms;
@property (nonatomic) BOOL validHealthcard;
@property (nonatomic, strong) NSMutableArray *previousMedication;



- (instancetype)initWithName:(NSString *)name andWithAge:(int)age andWithSymptoms:(NSArray *)symptoms;

-(void)requestMedications:(Doctor *)newDoctor;

-(void)visitDoctor:(Doctor *)newDoctor;

-(void)ask:(Doctor *)newDoctor;

@end
