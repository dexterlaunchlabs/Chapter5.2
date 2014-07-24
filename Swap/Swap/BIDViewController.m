//
//  BIDViewController.m
//  Swap
//
//  Created by Dexter Launchlabs on 7/24/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDViewController.h"
#define degreesToRadians(x) (M_PI * (x) / 180.0)
@interface BIDViewController ()

@end

@implementation BIDViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    NSString *message = nil;
    
    if ([self.foos containsObject:sender]) {
        for (UIButton *oneFoo in _foos) {
            oneFoo.hidden = YES;
        }
    }
    else{
        for (UIButton *oneBar in _bars) {
            oneBar.hidden = YES;
        }

    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:message message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation duration:(NSTimeInterval)duration {
    if (interfaceOrientation == UIInterfaceOrientationPortrait) { self.view = self.portrait;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0)); self.view.bounds = CGRectMake(0.0, 0.0, 320.0, 460.0);
    }
    else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(-90)); self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    }
    else if (interfaceOrientation ==
             UIInterfaceOrientationLandscapeRight) {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(90)); self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    } }
@end
