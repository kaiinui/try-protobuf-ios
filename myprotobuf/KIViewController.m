//
//  KIViewController.m
//  myprotobuf
//
//  Created by kaiinui on 2014/09/15.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "KIViewController.h"

#import "Book.pb.h"

@interface KIViewController ()

@end

@implementation KIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSData *bookData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://0.0.0.0:3000/books/somebook"]];
    
    Book *book = [Book parseFromData:bookData];

    NSLog(@"%@", book);
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
