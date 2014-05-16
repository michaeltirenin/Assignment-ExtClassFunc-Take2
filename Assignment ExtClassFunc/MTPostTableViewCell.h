//
//  MTPostTableViewCell.h
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import <UIKit/UIKit.h>

// declares this class "exists"
@class MTPost;

@interface MTPostTableViewCell : UITableViewCell

@property (nonatomic, strong) MTPost *post;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeStampLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

- (void)setPost:(MTPost *)post;

@end
