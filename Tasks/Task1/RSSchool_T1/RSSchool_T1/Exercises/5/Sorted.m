#import "Sorted.h"

@implementation ResultObject
@end

@implementation Sorted

// Complete the sorted function below.
- (ResultObject*)sorted:(NSString*)string {
    ResultObject *value = [ResultObject new];
    value.status = NO;
    
    NSArray *tempArray = [string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSMutableArray *array = [tempArray mutableCopy];
    
    NSArray* sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(id first, id second) {
        NSNumber *firstElem = [NSNumber numberWithInteger:[first integerValue]];
        NSNumber *secondElem = [NSNumber numberWithInteger:[second integerValue]];
        return [firstElem compare:secondElem];
    }];
    
    //if sorted already
    if ([tempArray isEqualToArray:sortedArray]) {
        value.status = YES;
        return value;
    }
    
    //trying to swap
    for (NSInteger i = array.count - 1; i > 0; i--) {
        if ([array[i] integerValue] < [array[i - 1] integerValue]) {
            NSInteger j = i - 1;
            
            while (j >= 0 && [array[i] integerValue] < [array[j] integerValue]) {
                j--;
            }
            
            id temp = array[i];
            array[i] = array[j + 1];
            array[j + 1] = temp;
            
            if ([array isEqualToArray:sortedArray]) {
                value.status = YES;
                value.detail = [NSString stringWithFormat:@"swap %ld %ld", j+2, i+1];
            }
            
            break;
        }
    }
    
    //trying to reverse
    if (!(value.status)) {
        
        //finding the first mismatch
        NSInteger begin;
        NSInteger indexBegin = 1;
        
        for (begin = 0; begin < array.count; begin++)
        {
            if ([sortedArray[begin] integerValue]!= [tempArray[begin] integerValue])
            {
                indexBegin += begin;
                break;
            }
        }
        
        //finding the last mismatch
        NSInteger end;
        NSInteger indexEnd = 1;
        
        for (end = array.count - 1; end >= 0; end--)
        {
            if ([sortedArray[end] integerValue] != [tempArray[end] integerValue])
            {
                indexEnd += end;
                break;
            }
        }
        
        //checking if subarray is decreasing
        do
        {
            begin++;
            if ([tempArray[begin - 1] integerValue] < [tempArray[begin] integerValue])
            {
                return value;
            }
            
        } while (begin != end);
        
        value.status = YES;
        value.detail = [NSString stringWithFormat:@"reverse %ld %ld", (long)indexBegin, (long)indexEnd];
        return value;
    }
    return value;
}

@end
