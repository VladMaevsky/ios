#import "MatrixHacker.h"

@interface MatrixHacker ()

@property id<Character>(^theBlock)(NSString*);

@end


@implementation MatrixHacker

- (void)injectCode:(id<Character> (^)(NSString *name))theBlock {
    self.theBlock = theBlock;
}

- (NSArray<id<Character>> *)runCodeWithData:(NSArray<NSString *> *)names {
    
    NSMutableArray<id<Character>> *arr = [[NSMutableArray new] autorelease];

    for (NSString *i in names) {
        id<Character> name = self.theBlock(i);
        [arr addObject: name];
    }
    
    return arr;
}

@end
