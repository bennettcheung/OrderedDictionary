//
//  OrderedDictionary.m
//  OrderedDictionary
//
//  Created by Bennett on 2018-08-12.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "OrderedDictionary.h"

@interface OrderedDictionary()
@property (nonatomic, strong) NSMutableArray <NSString*> *keysArray;
@property (nonatomic, strong) NSMutableDictionary <NSString*, NSString*> *dictionary;

@end

@implementation OrderedDictionary

+(instancetype)orderedDictionaryWithDictionary:(NSDictionary *)dict{
    OrderedDictionary *object = [[OrderedDictionary alloc]init];
    [dict enumerateKeysAndObjectsUsingBlock:^(id  key, id  obj, BOOL *  stop) {
        [object setObject:obj  forKey:key];
        
    }];

    return object;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _keysArray = [[NSMutableArray alloc]init];
        _dictionary = [[NSMutableDictionary alloc]init];
    }
    return self;
}

-(void)setObject:(id)object forKey:(NSString *)key{
    
    BOOL added = NO;
    for (int i = 0; i < [self.keysArray count]; i++)
    {
        NSString* tempString = self.keysArray[i];
        
        if ([tempString caseInsensitiveCompare:key] == NSOrderedDescending)
        {
            [self.keysArray insertObject:key atIndex:i];
            added = YES;
            break;
        }
    }
    if (!added)
        [self.keysArray addObject:key];
    
    [self.dictionary setObject:object forKey:key];
}

-(id)objectForKey:(NSString *)key{
    return [self.dictionary objectForKey:key];
}

-(NSString *)keyAtIndex:(NSInteger)index{
    
    return self.keysArray[index];
}

-(NSInteger)indexOfKey:(NSString *)key{
    
    return [self.keysArray indexOfObject:key];
}

-(NSUInteger)count{
    
    return [self.keysArray count];
}

-(NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)enumerationState objects:(id  _Nullable __unsafe_unretained [])buffer count:(NSUInteger)len{
    
    return [self.keysArray countByEnumeratingWithState:enumerationState objects:buffer count:len ];
}

@end
