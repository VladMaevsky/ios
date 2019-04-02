#import "RomanTranslator.h"

@implementation RomanTranslator

- (NSString *)arabicFromRoman:(NSString *)romanString {

    NSDictionary *numbers = [[NSDictionary alloc] initWithObjectsAndKeys:@(1), @"I", @(5), @"V", @(10), @"X", @(50), @"L", @(100), @"C", @(500), @"D", @(1000), @"M", nil];
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    NSInteger result = 0;
    
    for (NSInteger i = 0; i < romanString.length; i++) {
        [arr addObject:[NSString stringWithFormat:@"%c", [romanString characterAtIndex:i]]];
    }
    
    for (NSInteger i = 0; i < arr.count; i++) {
        if (i == arr.count - 1) {
            result += [[numbers objectForKey:arr[i]] integerValue];
            continue;
        }
        if ([[numbers objectForKey:arr[i]] integerValue] < [[numbers objectForKey:arr[i + 1]] integerValue]) {
            result += [[numbers objectForKey:arr[i + 1]] integerValue] - [[numbers objectForKey:arr[i]] integerValue];
            i++;
            continue;
        }
        if ([[numbers allKeys] containsObject:arr[i]]) {
            result += [[numbers objectForKey:arr[i]] integerValue];
        }
    }
    
    [arr release];
    [numbers release];
    
    return [NSString stringWithFormat:@"%ld", (long)result];
}

- (NSString *)romanFromArabic:(NSString *)arabicString {

    NSArray *numbers = [[NSArray alloc] initWithObjects:@(1),@(4),@(5),@(9),@(10),@(40),@(50),@(90),@(100),@(400),@(500),@(900),@(1000), @(10000), nil]; 
    NSArray *romans = [[NSArray alloc] initWithObjects:@"I",@"IV",@"V",@"IX",@"X",@"XL",@"L",@"XC",@"C",@"CD",@"D",@"CM",@"M", nil];
    NSMutableString *result = [[[NSMutableString alloc] init] autorelease];
    NSInteger num = [arabicString integerValue];
    
    while (num > 0) {
        for (NSInteger i = 0; i < numbers.count; i++) {
            if (num < [numbers[i] integerValue]){
                num -= [numbers[i - 1] integerValue];
                [result appendString:romans[i - 1]];
                break;
            }
        }
    }
    
    [numbers release];
    [romans release];
    
    return result;
}

@end
