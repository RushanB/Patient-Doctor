//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Rushan on 2017-05-04.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

#import "InputHandler.h"


@interface Doctor : NSObject

@property (nonatomic,assign) int age;
@property (nonatomic,strong) NSString* name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableDictionary *acceptedPatients;
@property (nonatomic, strong) NSDictionary *prescriptions;

-(instancetype)initWithName:(NSString *)name andWithSpecialization:(NSString *)specialization;


-(void)ask:(Patient *)newPatient;

-(void)acceptPatient:(Patient *)newPatient;


-(void)givePrescription:(NSArray *)patientSymptoms intoMutableArray:(NSMutableArray *)previousMedication;




@end
