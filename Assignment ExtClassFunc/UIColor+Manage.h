//
//  UIColor+Manage.h
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Manage)

//Lighten a given color
//Give each post in your PostsViewController a random background color.

+ (UIColor *)randomColor;

+ (UIColor *)lightenColor:(UIColor *)color byAmount:(CGFloat)amount;

@end
