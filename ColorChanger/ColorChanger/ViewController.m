//
//  ViewController.m
//  ColorChanger
//
//  Created by Gautham k on 15/07/17.
//  Copyright © 2017 Gautham k. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int c=0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)canBecomeFirstResponder {
    return YES;
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    if (event.subtype == UIEventSubtypeMotionShake) {
        label.text = @"Good...Keep  Shaking to change color";
        
        if(c%3==0)
        {
            self.view.backgroundColor = [UIColor redColor];
        }
        else if(c%3==1)
        {
        self.view.backgroundColor = [UIColor greenColor];        }
        else if(c%3==2)
        {
            self.view.backgroundColor = [UIColor yellowColor];
        }
    }
}
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    c=c+1;

}

- (void)viewDidAppear:(BOOL)animated {
    [self becomeFirstResponder];
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self resignFirstResponder];
    [super viewWillDisappear:animated];
}

@end
