//
//  MTCreatePostViewController.h
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTPost.h"

@protocol MTCreatePostViewControllerDelegate <NSObject>

@optional

- (void)addObject:(MTPost *)post;

@end

@interface MTCreatePostViewController : UIViewController

@property (nonatomic, unsafe_unretained) id <MTCreatePostViewControllerDelegate> createPostDelegate;

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *contentTextField;

- (IBAction)publishNewPost:(UIBarButtonItem *)sender;

- (IBAction)cancelNewPost:(UIBarButtonItem *)sender;

@end
