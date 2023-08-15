//
//  FixTheAppStoreViewController.m
//  Keybaggy
//
//  Created by Mali 357 on 03/08/23.
//  Copyright (c) 2023 Mali357. All rights reserved.
//

#import "FixTheAppStoreViewController.h"

@interface FixTheAppStoreViewController ()

@end

@implementation FixTheAppStoreViewController

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

//im too lazy so this is just from viewcontroller.m

- (IBAction)LovingThisDevice:(id)sender {
    NSString *filePath = @"/var/mobile/caches"; // death
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSError *error;
        if ([fileManager fileExistsAtPath:filePath]) {
            if ([fileManager removeItemAtPath:filePath error:&error]) {
                [self showAlertWithTitle:@"Success" message:@"Your phone was cured!."];
            } else {
                NSString *errorMessage = [NSString stringWithFormat:@"u will die: %@", error.localizedDescription];
                [self showAlertWithTitle:@"Error" message:errorMessage];
            }
        } else {
            NSString *errorMessage = [NSString stringWithFormat:@"couldnt find file at path: %@", filePath];
            [self showAlertWithTitle:@"death" message:errorMessage];
        }
    });
}

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                            message:message
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    });
}

@end
