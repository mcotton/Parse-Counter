//
//  ViewController.m
//  Counter
//
//  Created by Mark Cotton on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize CounterLabel;

NSInteger *Counter;
NSString *string;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Counter = 0;
}

- (void)viewDidUnload
{
    [self setCounterLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)incButton:(id)sender {
    NSLog(@"+ Button was pushed");
    [self adjustCounter: 1];
}

- (IBAction)decButton:(id)sender {
    NSLog(@"- Button was pushed");
    [self adjustCounter: -1];
}

-(void)adjustCounter:(int)adjustment {
    NSLog(@"adjustCounter was called");
    Counter = (int)Counter + adjustment;
    CounterLabel.text = [NSString stringWithFormat:@"%d", Counter];
}

@end
