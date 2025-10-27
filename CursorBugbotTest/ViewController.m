//
//  ViewController.m
//  CursorBugbotTest
//
//  Created by chinazscyj on 2025/10/10.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, copy) dispatch_block_t block;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.frame = CGRectMake(10, 200, 100, 20);
    [self.btn setTitle:@"点击" forState:UIControlStateNormal];
    
    [self.btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.block = ^{
        NSLog(@"xxx");
    };
}

-(void)btnClick:(id)sender {
    NSLog(@"xxxx");
    self.block();
}


@end
