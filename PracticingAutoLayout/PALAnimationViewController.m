//
//  PALAnimationViewController.m
//  KeyboardSensitiveLayout
//
//  Created by Yi Gu on 9/26/12.
//  Copyright (c) 2012 Yi Gu. All rights reserved.
//

#import "PALAnimationViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface PALAnimationViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topSpacing;

@end

@implementation PALAnimationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playAnimation:(id)sender {
    [UIView animateWithDuration:.5f animations:^{
        CGFloat originalY = self.topSpacing.constant;
        self.topSpacing.constant = originalY > 20 ? 20 : 120;
        [self.redView layoutIfNeeded];
    }];
}
@end
