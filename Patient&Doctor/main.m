//
//  main.m
//  Patient&Doctor
//
//  Created by Rushan on 2017-05-04.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *newPatient = [[Patient alloc] initWithName:@"Bob Cohort" andWithAge:33 andWithSymptoms:@[@"Sneezing",@"Other"]];
        
        Doctor *newDoctor = [[Doctor alloc] initWithName:@"Dr. Rush" andWithSpecialization:@"MD in Life Scienes"];
        
        
        [newPatient ask:newDoctor];
        [newDoctor ask:newPatient];
        [newDoctor acceptPatient:newPatient.symptoms];
        //[newDoctor givePrescription:newPatient.symptoms];
         
        [newPatient requestMedications:newDoctor];
        
    }
    return 0;
}
