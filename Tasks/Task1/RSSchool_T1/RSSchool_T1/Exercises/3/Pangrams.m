#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    NSString *alphabet = @"abcdefghijklmnopqrstuvwxyz";

    return [[self strToSet:alphabet] isEqualToSet:[self strToSet:string]];
}

- (NSSet *)strToSet:(NSString *)str {
    
    NSMutableSet *set = [[NSMutableSet alloc] init];
    
    for (NSInteger i = 0; i < [str length]; i++) {
        NSString *chr = [[str lowercaseString] substringWithRange:NSMakeRange(i, 1)];
        [set addObject:chr];
    }
    
    if ([set containsObject:@" "]) {
        [set removeObject:@" "];
    }
    
    return set;
}

@end
