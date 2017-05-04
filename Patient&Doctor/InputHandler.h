//
//  InputHandler.h
//  Patient&Doctor
//
//  Created by Rushan on 2017-05-04.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface InputHandler : NSObject

@property (nonatomic) NSString *response;

+(NSString *) getInput;

@end

