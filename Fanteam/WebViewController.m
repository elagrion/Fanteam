//
//  WebViewController.m
//  Fanteam
//
//  Created by olag on 8/30/16.
//  Copyright © 2016 oleg_agapi. All rights reserved.
//

#import "WebViewController.h"

static NSString* FanteamURLString = @"http://www.fanteam.com";

@interface WebViewController ()

@property (nonatomic, weak) IBOutlet UIWebView* webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:FanteamURLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url  cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:3.0];
    [self.webView loadRequest:request];
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
