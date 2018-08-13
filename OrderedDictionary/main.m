//
//  main.m
//  OrderedDictionary
//
//  Created by Bennett on 2018-08-12.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderedDictionary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        OrderedDictionary* orderedDictionary = [OrderedDictionary orderedDictionaryWithDictionary:@{@"ZZZ" : @"Object 4",
                                                                                                 @"GGG" : @"Object 2",
                                                                                                    @"JJJ" : @"Object 3",
                                                                                                    @"AAA" : @"Object 1"
                                                                                                    }];
        for (NSString *key in orderedDictionary)
        {
            NSLog(@"Object for  Key '%@' is '%@' at index %ld", key, [orderedDictionary objectForKey:key], (long)[orderedDictionary indexOfKey:key]);
        }
    }
    return 0;
}
