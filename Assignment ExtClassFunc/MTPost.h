//
//  MTPost.h
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTPost : NSObject

// instr: add userName, title, and content NSString properties and timeStamp NSDate property
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, strong) NSDate *timeStamp;

// custom initializer used when creating Post objects
//- (instancetype)initWithUserName:(NSString *)userName
//                           title:(NSString *)title
//                         content:(NSString *)content
//                            date:(NSDate *)timeStamp;

// this method formats the date to a string from the NSDate object
- (NSString *)stringFromDate:(NSDate *)sender;

@end
