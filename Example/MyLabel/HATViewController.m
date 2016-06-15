//
//  HATViewController.m
//  MyLabel
//
//  Created by Henry AT on 06/15/2016.
//  Copyright (c) 2016 Henry AT. All rights reserved.
//

#import "HATViewController.h"

#import "MyLabel.h"


@interface HATViewController ()

@property BOOL isBlinking;
@property (nonatomic, strong) MyLabel * blinkingLabel;


//let blinkingLabel = BlinkingLabel(frame: CGRectMake(10, 20, 200, 30))

@end

@implementation HATViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // - - - - - - - - -  - -
    self.isBlinking = false;
    self.blinkingLabel = [[MyLabel alloc] initWithFrame:CGRectMake(10, 20, 200, 30)];
    self.blinkingLabel.text = @"I blinck!";
    self.blinkingLabel.textColor = [UIColor greenColor];
    self.blinkingLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:self.blinkingLabel];
    
    [self.blinkingLabel startBlinking];
    self.isBlinking = true;
    UIButton * toggleButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 60, 125, 30)];
    [toggleButton setTitle:@"Toggle Blinking" forState:UIControlStateNormal];
    [toggleButton setTintColor:[UIColor redColor]];
    [toggleButton addTarget:self action:@selector(toggleBlinking) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:toggleButton];
    
//        
//        // Create a UIButton to toggle the blinking

//        toggleButton.setTitleColor(UIColor.redColor(), forState: .Normal)
//        toggleButton.addTarget(self, action: "toggleBlinking", forControlEvents: .TouchUpInside)
//        view.addSubview(toggleButton)
//    }
//    
//    func toggleBlinking() {
//        if (isBlinking) {
//            blinkingLabel.stopBlinking()
//        } else {
//            blinkingLabel.startBlinking()
//        }
//        isBlinking = !isBlinking
//    }
//    
    // - - - - - - - - -  - -
}

- (void)toggleBlinking
{
            if (self.isBlinking) {
                [self.blinkingLabel stopBlinking];
            } else {
                [self.blinkingLabel startBlinking];
            }
    self.isBlinking = !self.isBlinking;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
