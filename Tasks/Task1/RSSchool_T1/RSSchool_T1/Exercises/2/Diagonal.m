#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    NSInteger firstDiagonalSumm = 0;
    NSInteger secondDiagonalSumm = 0;
    
    for (NSString *row in array) {
        NSArray *arrayOfSeparatedValues = [[NSArray alloc] initWithArray:[row componentsSeparatedByString:@" "]];
        [arr addObject:arrayOfSeparatedValues];
    }
    
    for (NSInteger i = 0; i < arr.count; i++) {
        firstDiagonalSumm += [arr[i][i] integerValue];
    }

    for (NSInteger i = arr.count - 1; i >= 0; i--) {
        secondDiagonalSumm += [arr[arr.count - 1 - i][i] integerValue];
    }

    return @(labs(firstDiagonalSumm - secondDiagonalSumm));
}

@end
