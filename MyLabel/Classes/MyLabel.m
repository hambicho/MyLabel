//
//  MyLabel.m
//  Pods
//
//  Created by Henry Ambicho Trujillo on 6/15/16.
//
//

#import "MyLabel.h"

@implementation MyLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)startBlinking {
    
//    let options : UIViewAnimationOptions = .Repeat | .Autoreverse
    [UIView animateWithDuration:0.25f animations:^{
        self.alpha = 0;
    }];
//    UIView.animateWithDuration(0.25, delay:0.0, options:options, animations: {
//        self.alpha = 0
//    }, completion: nil)
}

-(void) stopBlinking {
    self.alpha = 1;
//    layer.removeAllAnimations()
}





@end
