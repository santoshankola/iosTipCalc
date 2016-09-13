//
//  SettingsViewController.m
//  tipCalculator
//
//  Created by Santosh Ankola on 9/12/16.
//  Copyright © 2016 Santosh Ankola. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *settingsTipControl;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadDefaults];
    
}
- (IBAction)onTipChanged:(UISegmentedControl *)sender {
    [self updateSettings];
}

- (void)loadDefaults{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tipDefaultIndex = [defaults integerForKey:@"defaultTip"];
    self.settingsTipControl.selectedSegmentIndex = tipDefaultIndex;
}
- (void)updateSettings{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    


    [defaults setInteger:self.settingsTipControl.selectedSegmentIndex forKey:@"defaultTip"];
    [defaults synchronize];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
