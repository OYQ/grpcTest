//
//  ViewController.m
//  grpcTest
//
//  Created by QuanOuyang on 2022/7/27.
//

#import "ViewController.h"
#import <grpcsdk/GrpcManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [[GrpcManager sharedManager] start];
}


@end
