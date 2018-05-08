//
//  ViewController.m
//  Tap Me
//
//  Created by Rendy on 5/8/18.
//  Copyright © 2018 Paytren. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController:UIViewController
int score;
NSTimer *timer;
int seconds;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void) setupGame {
    seconds = 20;
    score = 0;
    _labelTime.text = [NSString stringWithFormat:@"Time: %i", seconds];
    _labelScore.text = [NSString stringWithFormat:@"Score\n%i", score];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                       selector:@selector(substractTime)
                                           userInfo:nil
                                            repeats:YES];
}

-(void) substractTime{
    seconds--;
    _labelTime.text = [NSString stringWithFormat:@"Time: %i", seconds];
    if(seconds==0){
        [timer invalidate];
        timer = nil;
        UIAlertView *inputAlert = [[UIAlertView alloc] initWithTitle:@"Time is over" message: [NSString stringWithFormat:@"Your score is %i ", score] delegate:self cancelButtonTitle:@"Exit"  otherButtonTitles:@"Try Again!", nil];
        [inputAlert show];
    }
}

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if(buttonIndex==0)
        exit(0);
    else
        [self setupGame];
        
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionTapMe:(id)sender {
    score++;
    _labelScore.text = [NSString stringWithFormat:@"Score\n%i", score];
}
@end
