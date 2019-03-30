#import "KidnapperNote.h"

@implementation KidnapperNote

- (BOOL)checkMagazine:(NSString *)magaine note:(NSString *)note {

    NSMutableArray *magasineArr = [[NSMutableArray alloc] initWithArray:[[magaine lowercaseString] componentsSeparatedByString:@" "]];
    NSArray *noteArr = [[NSArray alloc] initWithArray:[[note lowercaseString] componentsSeparatedByString:@" "]];
    BOOL result = YES;
    
    for (NSString *str in noteArr) {
        if ([magasineArr containsObject:str]) {
            [magasineArr removeObject:str];
        } else {
            result = NO;
        }
        [str release];
    }
    
    [magasineArr release];
    [noteArr release];
    
    return result;
}
@end
