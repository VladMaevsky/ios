#import "RomanTranslator.h"

@implementation RomanTranslator

- (NSString *)arabicFromRoman:(NSString *)romanString {

//    NSDictionary *num = [[NSDictionary alloc] initWithObjectsAndKeys:@(1), @"I", @(5), @"V", @(10), @"X", @(50), @"L", @(100), @"C", @(500), @"D", @(1000), @"M", nil];
//
//    NSMutableArray *arr = [[NSMutableArray alloc] init];
//    NSInteger result = 0;
//    for (NSInteger i = 0; i < romanString.length; i++) {
//        [arr addObject:[NSString stringWithFormat:@"%c", [romanString characterAtIndex:i]]];
//    }
//
//    NSLog(@"--------%@", arr);
//
//    for (NSInteger i = 0; i < arr.count; i++) {
//        NSLog(@"%@", arr[i]);
//        if (i != arr.count - 1) {
//            if ([num objectForKey:arr[i]] < [num objectForKey:arr[i + 1]]) {
//                [[num objectForKey:arr[i+1]] integerValue]
//            }
//            if ([arr[i] isEqual: @"I"]) {
//                NSLog(@"axaxaxa");
//                result += [[num objectForKey:@"I"] integerValue];
//            } else if ([arr[i] isEqual: @"V"]) {
//                result += [[num objectForKey:@"V"] integerValue];
//            } else if ([arr[i] isEqual: @"X"]) {
//                result += [[num objectForKey:@"X"] integerValue];
//            } else if ([arr[i] isEqual: @"L"]) {
//                result += [[num objectForKey:@"L"] integerValue];
//            } else if ([arr[i] isEqual: @"C"]) {
//                result += [[num objectForKey:@"C"] integerValue];
//            } else if ([arr[i] isEqual: @"D"]) {
//                result += [[num objectForKey:@"D"] integerValue];
//            } else if ([arr[i] isEqual: @"M"]) {
//                result += [[num objectForKey:@"M"] integerValue];
//            }
//        }
//
//    }
//
//    NSLog(@"------%ld", (long)result);
//    NSLog(@"%@", [num objectForKey:@"I"]);
    return @"";
}

- (NSString *)romanFromArabic:(NSString *)arabicString {
    
//    NSArray *arr = [[NSArray alloc] initWithArray:[arabicString componentsSeparatedByString:@" "]];
//    
//    NSLog(@"%@", arr);
//    
    
    
    return @"";
}
@end
