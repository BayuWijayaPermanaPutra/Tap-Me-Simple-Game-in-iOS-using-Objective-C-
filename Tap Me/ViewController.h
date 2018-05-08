//
//  ViewController.h
//  Tap Me
//
//  Created by Rendy on 5/8/18.
//  Copyright © 2018 Paytren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)actionTapMe:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelScore;
@property (weak, nonatomic) IBOutlet UILabel *labelTime;


@end

