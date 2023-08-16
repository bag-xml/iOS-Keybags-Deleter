//
//  ViewController.m
//  Keybaggy
//
//  Created by Mali 357 on 02/08/23.
//  Copyright (c) 2023 Mali357. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)CureHumansFromLegacy:(id)sender {
    NSString *filePath = @"/var/keybags/systembag.kb"; // death
    
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

//alertview (first time i did this lol)
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


//this crashes the app idk why. i dont wanna work on this tbh
//update: it works, was just an issue in my storyboard :/
- (IBAction)LovingThisDevice:(id)sender {
    NSString *filePath = @"/var/root/lockdownd"; // death
    
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

@end
