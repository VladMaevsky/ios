#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    NSInteger row = sqrt(string.length);
    NSInteger col = sqrt(string.length);
    NSInteger rowCol = row * col;
    
    //finding correct row and column numbers
    while (rowCol < string.length) {
        if (row < col) {
            ++row;
        } else {
            ++col;
        }
        
        rowCol = row * col;
    }
    
    //making array of chars from the string
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < string.length; i++) {
        NSString *chr = [string substringWithRange:NSMakeRange(i, 1)];
        [arr addObject:chr];
    }
    
    //making the result string
    NSMutableString *resultStr = [[NSMutableString alloc] init];
    
    for (NSInteger i = 0; i < col; i++) {
        if (resultStr.length > 0) {
            [resultStr appendString:@" "];
        }
        for (NSInteger j = 0; j < row; j++) {
            NSInteger index = [[self makeIndexFromRow:row andCol:col][j] integerValue] + i;
            
            if (index < string.length) {
                [resultStr appendString:arr[index]];
            }
        }
    }
    
    return resultStr;
}

- (NSMutableArray *)makeIndexFromRow:(NSInteger)row andCol:(NSInteger)col {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@(0), nil];
    
    for (NSInteger i = 0; i < row - 1; i++) {
        [arr addObject:@([[arr lastObject] integerValue] + col)];
    }
    return arr;
}

@end
