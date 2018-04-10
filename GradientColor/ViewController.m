//
//  ViewController.m
//  GradientColor
//
//  Created by dongkaiqiang on 2018/4/10.
//  Copyright © 2018年 Yunyu. All rights reserved.
//

//那我们就让美工给出的 参数/255 得到一个0-1之间的数
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
//传入RGB三个参数，得到颜色
#define RGB(r,g,b) RGBA(r,g,b,1.f)

#import "ViewController.h"

#import "UIImage+GradientColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createView];
    
}

-(void)createView{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 200, 500)];
    [imageView setImage:[UIImage gradientColorImageFromColors:@[RGB(100, 0, 0),RGB(0, 100, 50)] gradientType:GradientTypeTopToBottom imgSize:imageView.frame.size]];
    [self.view addSubview:imageView];
    
    
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
