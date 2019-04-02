#import "RomanTranslator.h"

@implementation RomanTranslator

- (NSString *)arabicFromRoman:(NSString *)romanString {

    NSDictionary *num = [[NSDictionary alloc] initWithObjectsAndKeys:@(1), @"I", @(5), @"V", @(10), @"X", @(50), @"L", @(100), @"C", @(500), @"D", @(1000), @"M", nil];
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    NSInteger result = 0;
    
    for (NSInteger i = 0; i < romanString.length; i++) {
        [arr addObject:[NSString stringWithFormat:@"%c", [romanString characterAtIndex:i]]];
    }
    
    for (NSInteger i = 0; i < arr.count; i++) {
        if (i == arr.count - 1) {
            result += [[num objectForKey:arr[i]] integerValue];
            continue;
        }
        if ([[num objectForKey:arr[i]] integerValue] < [[num objectForKey:arr[i + 1]] integerValue]) {
            result += [[num objectForKey:arr[i + 1]] integerValue] - [[num objectForKey:arr[i]] integerValue];
            i++;
            continue;
        }
        if ([[num allKeys] containsObject:arr[i]]) {
            result += [[num objectForKey:arr[i]] integerValue];
        }
    }

    return [NSString stringWithFormat:@"%ld", (long)result];
}

- (NSString *)romanFromArabic:(NSString *)arabicString {
    
    return @"";
}
@end
