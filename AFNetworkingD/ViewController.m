//
//  ViewController.m
//  AFNetworkingD
//
//  Created by lmj on 15/10/31.
//  Copyright © 2015年 lmj. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <AFNetworking.h>
@interface ViewController ()
{
    AppDelegate * myDelegate;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)test
{
    myDelegate=[UIApplication sharedApplication].delegate;
    NSString * urlStr=[NSString stringWithFormat:@"http://www.bigheadh.com/webapp/NewsServlet"];
    //NSURL * urlS=[NSURL URLWithString:urlStr];
    //newsId＝10   拼接参数
    NSDictionary * parameters=@{@"newsId":@"10"};
    
   [myDelegate.mySession GET:urlStr parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
       NSLog(@"%@",responseObject);
       
   } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
       NSLog(@"%@",error);
   }];
    [myDelegate.mySession POST:urlStr parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        NSLog(@"%@",responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        
    }];

    
    
    
    
//    NSURL *URL = [NSURL URLWithString:@"http://www.bigheadh.com/webapp/NewsServlet"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//    AFHTTPRequestOperation *op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
//    op.responseSerializer = [AFJSONResponseSerializer serializer];
//    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
//    [[NSOperationQueue mainQueue] addOperation:op];
//
    
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
