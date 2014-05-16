//
//  MTPost.m
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import "MTPost.h"

@implementation MTPost

// necessary or was this an example?
//- (instancetype)init
//{
//    return [self initWithUserName:@"New Name" title:@"Title" content:@"New post" date:[NSDate date]];
//}

//- (instancetype)initWithUserName:(NSString *)userName title:(NSString *)title content:(NSString *)content date:(NSDate *)timeStamp
//{
//    //init method to create new post instances
//    self = [super init];
//    if (self) {
//        
//        _userName = userName;
//        _title = title;
//        _content = content;
//        _timeStamp = timeStamp;
//        
//    }
//    
//    return self;
//}

- (NSString *)stringFromDate:(NSDate *)sender
{
    NSString *dateString = [NSDateFormatter localizedStringFromDate:[NSDate date] dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterShortStyle];
    
    return dateString;
}


@end
