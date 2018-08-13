//
//  OrderedDictionary.h
//  OrderedDictionary
//
//  Created by Bennett on 2018-08-12.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderedDictionary : NSObject <NSFastEnumeration>

+(instancetype)orderedDictionaryWithDictionary:(NSDictionary*)dict;

-(void)setObject:(id)object forKey:(NSString*)key;

-(id)objectForKey:(NSString*)key;

-(NSString*)keyAtIndex:(NSInteger)index;

-(NSInteger)indexOfKey:(NSString*)key;

-(NSUInteger)count;


@end
