//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Rushan on 2017-05-04.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor


-(instancetype)initWithName:(NSString *)name andWithSpecialization:(NSString *)specialization{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableDictionary alloc] init];
        _prescriptions = @{
                           @"coughing": @"cough medicine",
                           @"headaches": @"headache medicine",
                           @"other": @"other medicine"};
    }
    return self;
}


-(void)ask:(Patient *)newPatient{
    NSLog(@"Name:");
    NSLog(@"%@", newPatient.name);
    
    NSLog(@"Age:");
    NSLog(@"%i", newPatient.age);
    
    NSLog(@"Symptoms:");
    NSLog(@"%@", newPatient.symptoms);
}

-(void)acceptPatient:(Patient *)newPatient{
        if(newPatient.validHealthcard == YES){
            [self.acceptedPatients setObject:newPatient forKey:newPatient.name];
            NSLog(@"Welcome, you have a valid healthcard.");
            
        }else{
            
            NSLog(@"Sorry, you do not have a healthcard.");
        }
}


-(void)givePrescription:(NSArray *)patientSymptoms intoMutableArray:(NSMutableArray *)previousMedication{
    
    for (NSString *symptom in patientSymptoms) {
        
        if (self.prescriptions[symptom]) {
            
            //checking if the medication has already been administered
            if ([previousMedication containsObject:[self.prescriptions objectForKey:symptom]]) {
                
                NSLog(@"You already have this medication!");
                
            } else {
                
                NSLog(@"Maybe this will help you out: %@", [self.prescriptions objectForKey:symptom]);
                
                //adding the medication to previous medication
                [previousMedication addObject:[self.prescriptions objectForKey:symptom]];
                
            }
            
            
        }
    }
    
    
}




@end
