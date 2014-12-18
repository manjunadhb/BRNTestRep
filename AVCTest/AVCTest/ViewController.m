//
//  ViewController.m
//  AVCTest
//
//  Created by Manjunadh on 29/10/14.
//  Copyright (c) 2014 Manjunadh. All rights reserved.
//

#import "ViewController.h"
#import "CustomActivity.h"
#import "SharingText.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.myBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    self.myBtn.frame = CGRectMake(100, 100, 100, 100);
    
    [self.view addSubview:self.myBtn];
    
    [self.myBtn addTarget:self action:@selector(showAVC) forControlEvents:UIControlEventTouchUpInside];
    
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)showAVC
{
    
    SharingText * sharingContent = [[SharingText alloc]init];
    
    
    CustomActivity * brnItem = [[CustomActivity alloc]init];
    
    //NSString * shareText = @"Text to share";
    
    
    NSArray * arr = @[sharingContent,[UIImage imageNamed:@"splash.png"],[NSURL URLWithString:@"http://www.brninfotech.com"]];
    
    //UISimpleTextPrintFormatter *printData = [[UISimpleTextPrintFormatter alloc]initWithText:self.title];
    //NSArray *activityItems = @[self.title, printData];
    
    self.avc = [[UIActivityViewController alloc]initWithActivityItems:arr applicationActivities:@[brnItem]];
    
    //UIActivity
    
    //self.avc.excludedActivityTypes = @[UIActivity]
    
    
    [self presentViewController:self.avc animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
