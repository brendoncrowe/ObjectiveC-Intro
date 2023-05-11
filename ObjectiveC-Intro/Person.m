//
//  Person.m
//  ObjectiveC-Intro
//
//  Created by Brendon Crowe on 5/10/23.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

// initializer
- (instancetype)initWithName:(NSString *)name {
    if(self = [super init]) { // in swift, super.init()
        // initialize properties here.
        self.name = name;
    }
    return  self; // return newly created instance to the caller
}

// class methods
+ (NSArray *)allPeople {
    Person *alex = [[Person alloc] init];
    Person *bruce = [[Person alloc] init];
    alex.name = @"Alex";
    bruce.name = @"Bruce";

    NSArray *people = @[alex, bruce];
    return people;
}

// instance methods
- (void)info {
    NSLog(@"The person's name is %@.", self.name);
}


@end
