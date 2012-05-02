//
//  ViewController.h
//  Counter
//
//  Created by Mark Cotton on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *CounterLabel;

- (IBAction)incButton:(id)sender;
- (IBAction)decButton:(id)sender;

@end
