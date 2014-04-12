//
//  ImageCell.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-04-08.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        UIView * bg = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        self.backgroundView = bg;
        self.backgroundView.backgroundColor = [UIColor whiteColor];
        
        UIView * sbg = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        self.selectedBackgroundView = sbg;
        self.selectedBackgroundView.backgroundColor = [UIColor darkGrayColor];
    }
    return self;
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
