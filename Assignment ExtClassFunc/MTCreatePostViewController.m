//
//  MTCreatePostViewController.m
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import "MTCreatePostViewController.h"
#import "MTPost.h" //necessary?

// UITextFieldDelegate protocol method used to resign keyboard
@interface MTCreatePostViewController () <UITextFieldDelegate>

@end

@implementation MTCreatePostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// .delegate allows for keyboard resignation
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    _userNameTextField.delegate = self;
    _titleTextField.delegate = self;
    _contentTextField.delegate = self;
    
//    NSLog(@"%@ = %@, %@ = %@, %@ = %@, %@ = %@", _userNameTextField.text, _post.userName, _titleTextField.text, _post.title, _contentTextField.text, _post.content, [NSDate date], _post.timeStamp);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)publishNewPost:(UIBarButtonItem *)sender
{
//    MTPost *newPost = [[MTPost alloc] initWithUserName:_userNameTextField.text title:_titleTextField.text content:_contentTextField.text date:[NSDate date]];

    MTPost *post = [[MTPost alloc] init];
    post.userName = _userNameTextField.text;
    post.title = _titleTextField.text;
    post.content = _contentTextField.text;
    post.timeStamp = [NSDate date];
    
//    NSLog(@"%@ = %@, %@ = %@, %@ = %@, %@ = %@", _userNameTextField.text, post.userName, _titleTextField.text, post.title, _contentTextField.text, post.content, [NSDate date], post.timeStamp);
    
    [self.createPostDelegate addObject:post];
    
//    NSLog(@"Self is %@", self.createPostDelegate);
//    NSLog(@"newPost is %@", post);

}

- (IBAction)cancelNewPost:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



// UITextFieldDelegate protocol method; resigns keyboard when "return" is tapped
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

@end
