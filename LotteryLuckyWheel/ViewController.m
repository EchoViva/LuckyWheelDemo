//
//  ViewController.m
//  LotteryLuckyWheel
//
//  Created by hellovoidworld on 15/1/16.
//  Copyright (c) 2015年 hellovoidworld. All rights reserved.
//

#import "ViewController.h"
#import "HVWLuckyWheel.h"

@interface ViewController ()

@property(nonatomic, strong) HVWLuckyWheel *luckyWheel;

- (IBAction)start;
- (IBAction)stop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建一个幸运转轮
    HVWLuckyWheel *wheel = [HVWLuckyWheel hvwLuckyWheel];
    wheel.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    self.luckyWheel = wheel;
    
    [self.view addSubview:wheel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start {
    [self.luckyWheel startRotate];
}

- (IBAction)stop {
    [self.luckyWheel stopRotate];
}
@end
