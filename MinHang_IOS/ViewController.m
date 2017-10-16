//
//  ViewController.m
//  MinHang_IOS
//
//  Created by zhongyongqiang on 14/10/2017.
//  Copyright © 2017 zhongyongqiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:webView];
    
    NSURL * url = [NSURL URLWithString:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"src"]];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
