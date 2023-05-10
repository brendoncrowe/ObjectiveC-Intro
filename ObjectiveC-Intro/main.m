//
//  main.m
//  ObjectiveC-Intro
//
//  Created by Brendon Crowe on 5/10/23.
//

#import <Foundation/Foundation.h> // .h refers to header file, which determines functions and properties
// in swift, import Foundation
#import "Person.h" // you import the .h file not the .m; created types use "" not <>

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
        
        // ====================
        //        Strings
        // ====================
        
        // declare a string; data type comes first
        // NSString is an object that allocates memory on the heap, which is a place(or buffer) in memory.
        // classes take up more memory than a struct
        // * is a pointer to memory, which is holding the NSString
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
        //        Arrays
        // ====================
        // objc is NOT type safe.
        NSArray *countries = @[@"USA", @"Canada", @"Mexico"];
        
        // iterating through array
        for (NSString *country in countries) {
            if ([country isEqual: @"USA"]) {
                NSLog(@"The %@ is my home country!", country);
            }
        }
        
        // create an instance of Person
        // call the instance method info
        Person *brendon = [[Person alloc] init];
        [brendon info];
        
        
    }
    return 0;
}
