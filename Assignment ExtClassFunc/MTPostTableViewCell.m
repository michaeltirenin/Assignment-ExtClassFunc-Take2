//
//  MTPostTableViewCell.m
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import "MTPostTableViewCell.h"
#import "MTPost.h"

@implementation MTPostTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

// instr: this method should be called from cellForRowAtIndexPath: method in UITableView datasource
- (void)setPost:(MTPost *)post
{
    _post = post;
    
    _titleLabel.text = _post.title;
    _userNameLabel.text = _post.userName;
    _timeStampLabel.text = [_post stringFromDate:_post.timeStamp];
    _contentLabel.text = _post.content;
    
    [[self titleLabel] setFont:[UIFont fontWithName:@"TrebuchetMS" size:20]];
    [[self titleLabel] setTextAlignment:NSTextAlignmentLeft];
    [[self titleLabel] setTextColor:[UIColor colorWithRed:0.0/255.0f green:0.0/255.0f blue:0.0/255.0f alpha:1.0f]];
    
    [[self userNameLabel] setFont:[UIFont fontWithName:@"TrebuchetMS-Italic" size:12]];
    [[self userNameLabel] setTextAlignment:NSTextAlignmentLeft];
    [[self userNameLabel] setTextColor:[UIColor colorWithRed:170.0/255.0f green:170.0/255.0f blue:170.0/255.0f alpha:1.0f]];
    
    [[self timeStampLabel] setFont:[UIFont fontWithName:@"TrebuchetMS-Italic" size:12]];
    [[self timeStampLabel] setTextAlignment:NSTextAlignmentLeft];
    [[self timeStampLabel] setTextColor:[UIColor colorWithRed:200.0/255.0f green:200.0/255.0f blue:200.0/255.0f alpha:1.0f]];
    
    [[self contentLabel] setFont:[UIFont fontWithName:@"TrebuchetMS" size:16]];
    [[self contentLabel] setTextAlignment:NSTextAlignmentLeft];
//    [[self contentLabel] sizeToFit];

}

@end
