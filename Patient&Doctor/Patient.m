//
//  Patient.m
//  Patient&Doctor
//
//  Created by Rushan on 2017-05-04.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andWithAge:(int)age andWithSymptoms:(NSArray *)symptoms{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _symptoms = symptoms;
        _validHealthcard = YES;
        
    }
    return self;
}


-(void)requestMedications:(Doctor *)newDoctor{
    NSLog(@"My symptoms are: %@, can you give me a prescription?", self.symptoms);
    if(self.validHealthcard == YES){
        NSLog(@"Yes.");
        [newDoctor givePrescription:self.symptoms intoMutableArray:self.previousMedication];
    }else{
        NSLog(@"No, you need a healthcard.");
    }

}

-(void) visitDoctor:(Doctor *)newDoctor{
    [newDoctor acceptPatient:self];
}

- (void)ask:(Doctor *)newDoctor{
    NSLog(@"What is your name?");
    NSLog(@"%@", newDoctor.name);
    
    NSLog(@"What is your specialization?");
    NSLog(@"%@", newDoctor.specialization);
    
}


@end
