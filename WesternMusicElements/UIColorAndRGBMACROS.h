//
//  UIColorAndRGBMACROS.h
//  CustomTableCells
//
//  Created by Cormier Frederic on 05/10/11.
//  Copyright (c) 2011 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>


//RGB color macro
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//RGB color macro with alpha
#define UIColorFromRGBWithAlpha(rgbValue,a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]




/*

USE like this

 self.view.backgroundColor = UIColorFromRGB(0xCECECE);
 self.view.backgroundColor = UIColorFromRGBWithAlpha(0xCECECE, 0.8);


*/