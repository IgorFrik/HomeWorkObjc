//
//  ObjcViewController1.m
//  HomeWorkObjc
//
//  Created by Igor Frik on 31.08.2022.
//

#import "ObjcViewController1.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ObjcViewController1 ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UITextField *textTextField;

@end

@implementation ObjcViewController1

//NSMutableArray *array = [[NSMutableArray alloc] init];
NSMutableArray *array2 = @[@"1",@"2"];

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)push:(id)sender {
    
    [array2 addObject:@"Test"];
    NSString *temp = [array2 componentsJoinedByString:@" "];
    
    NSLog(@"%@", temp);

}

@end
