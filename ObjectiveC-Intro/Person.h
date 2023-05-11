//
//  Person.h
//  ObjectiveC-Intro
//
//  Created by Brendon Crowe on 5/10/23.
//

@interface Person : NSObject

// properties
// in swift, let name: String
@property NSString *name;


// initializers
- (instancetype) initWithName: (NSString *) name; // name is the property 

// methods - class methods come before instance methods
+ (NSArray *)allPeople;


// instance methods are declared with '-'
- (void)info;


@end
