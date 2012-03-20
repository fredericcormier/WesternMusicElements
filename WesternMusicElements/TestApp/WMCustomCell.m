//
//  WMCustomCell.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 20/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMCustomCell.h"
#import "UIColorAndRGBMACROS.h"

@implementation WMCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)drawRect:(CGRect)rect {
    
    const float kLineWidth = 1.0;
    UIColor *grisatre = UIColorFromRGB(0xe8e4e3);
    UIColor *creme = UIColorFromRGB(0xecdbc1);
    
    CGColorRef backGroundColorRef = [[UIColor whiteColor] CGColor];
    CGColorRef bottomSeparatorColorRef = [creme CGColor];
    CGColorRef topSeparatorColorRef = [grisatre CGColor];
    
    
    rect = [[self contentView] bounds];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    // backGround
    CGContextSetFillColorWithColor(context, backGroundColorRef);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, rect.size.width, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextClosePath(context);
    CGContextFillPath(context);
    //Bottom Separator
    CGContextSetStrokeColorWithColor(context, bottomSeparatorColorRef);
    CGContextSetLineWidth(context, kLineWidth);
    CGContextSetLineCap(context, kCGLineCapSquare);
    CGContextMoveToPoint(context, 0.0, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextStrokePath(context);
    // Top Separator
    CGContextSetStrokeColorWithColor(context, topSeparatorColorRef);
    CGContextSetLineWidth(context, kLineWidth);
    CGContextSetLineCap(context, kCGLineCapSquare);
    CGContextMoveToPoint(context, 0.0, 0.0);
    CGContextAddLineToPoint(context, rect.size.width, 0);
    CGContextStrokePath(context);
    
    
}



@end
