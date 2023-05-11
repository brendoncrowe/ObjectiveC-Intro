//
//  main.m
//  ObjectiveC-Intro
//
//  Created by Brendon Crowe on 5/10/23.
//

#import <Foundation/Foundation.h> // .h refers to header file, which determines functions and properties
// in swift, import Foundation
#import "Person.h" // you import the .h file not the .m; created types use "" not <>
#import "Fellow.h"

/* function in swift...
 func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
 }
 */

// declare a (C-style) function
// in a C function, the data type that you want to return comes first
int add(int num1, int num2) {
    return num1 + num2;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool { // @autoreleasepool is taking care of memory
        // insert code here...
        NSLog(@"Hello, World!");
        // In swift, print("Hello World") is the equivalent to NSLog(@"Hello, World!")
        // all swift literals in objc have to be prefixed with the '@' symbol
        
        // use add function
        int result = add(10, 12);
        NSLog(@"The result of addition is %i.", result); // %i is a format specifier (i = Int)
        
        int subtract = 87 - 15;
        NSLog(@"The result of subtracting 15 from 87 is: %i.", subtract);
        
        // ====================
        //        Strings
        // ====================
        
        // declare a string; data type comes first
        // NSString is an object that allocates memory on the heap, which is a place(or buffer) in memory.
        // classes take up more memory than a struct
        // * is a pointer to memory, which is holding the NSString. Specifies an object
        
        // in Swift, let name = "Bob"
        NSString *name = @"Bob";
        NSLog(@"The name of the user is %@.", name); // %@ is the format specifier for a string literal
        
        // [NSMutableString alloc] allocates memory for the object
        // mutable string in swift
        // var language = "The language"
        // language += " is Swift."
        // language.append(" is objectiveC")
        
        // mutable string in objc
        NSMutableString *language = [[NSMutableString alloc] initWithString: @"The language"];
        // calling an objc function
        // [instance methodName];
        // [Class methodName]; - [NSMutableString alloc]
        NSLog(@"language: %@", language);
        
        // calling function
        [language appendString:@" is javaScript"];
        NSLog(@"language: %@", language);
        
        // ====================
        //        Array
        // ====================
        // objc is NOT type safe.
        NSArray *countries = @[@"USA", @"Canada", @"Mexico"];
        
        // iterating through array
        for (NSString *country in countries) {
            if ([country isEqual: @"USA"]) {
                NSLog(@"The %@ is my home country!", country);
            }
        }
        
        // =========================
        //        NSMutableArray - anything mutable is able to change. Non-mutable is constant
        // =========================
        NSMutableArray *raceTypes = [[NSMutableArray alloc] init];
        // in swift, var raceTypes = [String]()
        [raceTypes addObject: @"Marathon"];
        [raceTypes addObject: @"10k"];
        [raceTypes addObject: @"5k"];
        [raceTypes addObject: @"Triathlon"];
        
        for (NSString *raceType in raceTypes) {
            NSLog(@"I have done a %@.", raceType);
        }
        
        // =========================
        //        NSDictionary
        // =========================
        // let places = ["New York": "Brooklyn"]
        NSDictionary *placesDict = @{@"New York": @"Brooklyn", @"Sweden": @"Malmo"};
        for(NSString *placeKey in placesDict) {
            NSString *placeValue = placesDict[placeKey];
            NSLog(@"The place key is %@ and the value is %@.", placeKey, placeValue);
        }
        
        // ===============================
        //       NSMutableDictionary
        // ===============================
        NSMutableDictionary *platform = [[NSMutableDictionary alloc] init];
        [platform setObject: @"iOS apps" forKey:@"iOS"];
        [platform setObject: @"android apps" forKey:@"kotlin"];
        NSLog(@"There are currently %lu platforms", platform.count); // need %lu (long Int) for .count
        
        // =========================
        //        Objc methods - class methods & instance methods
        // =========================
        // create an object called Person in Swift
        // struct Person {}
        // in objc, two files are needed: Person.h & Person.m
        // Person.h declares the methods
        // Person.m is where the methods are implemented
        
        Person *person = [[Person alloc] init];
        person.name = @"Logan Ball";
        NSLog(@"The person's name is %@", person.name);
        [person info];
        
        // ===========================
        //        Objc Properties
        // ===========================
        NSArray *people = [Person allPeople];
        NSLog(@"There are %lu people", people.count);
        for(Person *person in people) {
            NSLog(@"The person's name is %@", person.name);
        }
        
        // how to handle an optional such as people = nil since objc does not have 'optionals'
        if (people.count > 0) {
            Person *firstPerson = people[0]; // or person.firstObject
            NSLog(@"The first person is %@", firstPerson.name);
        }
        
        // ===========================
        //        Objc Initializers -  instead of the above person.name = "", create a custom initializer
        // ===========================
        Person *person2 = [[Person alloc] initWithName: @"Jen"];
        [person2 info];
        
        // ===========================
        //          Inheritance
        // ===========================
        Fellow *tommy = [[Fellow alloc] initWithName: @"Tommy"];
        [tommy info];
        
    }
    return 0;
}
