//
//  ViewController.h
//  Jokes
//
//  Created by fpmi on 29.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSArray *jokes;
@property int current;
@property (weak, nonatomic) IBOutlet UILabel *joke;

@end

