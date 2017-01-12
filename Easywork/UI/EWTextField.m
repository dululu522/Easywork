//
//  EWTextField.m
//  Easywork
//
//  Created by Kingxl on 12/1/14.
//  Copyright (c) 2014 kingxl. All rights reserved.
//

#import "EWTextField.h"

@interface EWTextField ()
@end

@implementation EWTextField

- (void)drawPlaceholderInRect:(CGRect)rect
{
    
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_7_0
    [[self placeholder] drawInRect:rect withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16], NSForegroundColorAttributeName:self.placeholderColor}];
#else
    [[self placeholder] drawInRect:rect withFont:[UIFont systemFontOfSize:16]];

#endif
}

-(CGRect)placeholderRectForBounds:(CGRect)bounds
{

    CGRect inset = CGRectMake(bounds.origin.x+21, bounds.origin.y+14, bounds.size.width-21, bounds.size.height);
    return inset;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
