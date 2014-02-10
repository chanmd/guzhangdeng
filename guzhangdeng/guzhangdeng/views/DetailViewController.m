//
//  DetailViewController.m
//  guzhangdeng
//
//  Created by Kevin Chan on 2/5/14.
//  Copyright (c) 2014 KCCL. All rights reserved.
//

#import "DetailViewController.h"
#import "UILabel+Extensions.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize warninglightEntity = warninglightEntity;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)init
{
    self = [super init];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = [warninglightEntity objectForKey:@"name"];
    
    [self performSelector:@selector(drawLayout) withObject:nil afterDelay:0.3];
}

- (void)drawLayout
{
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10 + FixY, 120, 120)];
    NSString *imagename = [warninglightEntity objectForKey:@"image"];
    UIImage *image = [UIImage imageNamed:imagename];
    imageview.image = image;
    [self.view addSubview:imageview];
    
    UILabel *meanlabel = [UILabel labelWithText:[warninglightEntity objectForKey:@"meaning"]];
    meanlabel.frame = CGRectMake(10, 204, meanlabel.frame.size.width, meanlabel.frame.size.height);
    [self.view addSubview:meanlabel];
    
    UILabel *wtdlabel = [UILabel labelWithText:[warninglightEntity objectForKey:@"wtd"]];
    wtdlabel.frame = CGRectMake(10, meanlabel.frame.size.height + meanlabel.frame.origin.y + 15, wtdlabel.frame.size.width, wtdlabel.frame.size.height);
    [self.view addSubview:wtdlabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
