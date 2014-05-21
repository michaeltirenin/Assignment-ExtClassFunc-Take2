//
//  MTPostsTableViewController.m
//  Assignment ExtClassFunc
//
//  Created by Michael Tirenin on 5/14/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import "MTPostsTableViewController.h"
#import "MTPostTableViewCell.h"
#import "MTPost.h"
#import "MTCreatePostViewController.h"
#import "MTEditPostViewController.h"
#import "UIColor+Manage.h"

// quick way to capture the name of the cell identifier to be used later (see below)
static NSString * const MTPostCellIdentifier = @"PostCell";

@interface MTPostsTableViewController () <UITableViewDataSource, UITableViewDelegate, MTCreatePostViewControllerDelegate, MTEditPostViewControllerDelegate>

//do I need this?
//@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MTPostsTableViewController

//@synthesize tableView;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _posts = [[NSMutableArray alloc] init];
    
//    MTPost *post1 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of First Post" content:@"Lorem ipsum dolor sit amet, conse ur adipiscing elit. Duis mollis erat ut nunc ultrices dictum. Sed mauris quis augue scelerisque pharetra. Nullam arcu ante, aliquam luctus." date:[NSDate date]];
//    MTPost *post2 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Second Post" content:@"Lorem ipsum elit. Fusce vitae digni ossim nisi, nec fermentum nunc. Nunc a hendrerit magna. Suspen dis se dui neque, posuere ut porta phare tra, varius ac urna. :)" date:[NSDate date]];
//    MTPost *post3 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Third Post" content:@"Lorem ipsum dolor sit amet, adip soit elit. Proin vitae rhoncus mase. In tu aliquet nec ligula id euismod. Vivamus nisl massa, luctus at urna vitae corfus." date:[NSDate date]];
//    MTPost *post4 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Fourth Post" content:@"Lorem ipsum dolor sit amet, con sec tetur adipiscing elit. Donec ligula quam, pharetra id fringilla non, elementum in augue. In non mi vel quam facilisis. Ha, ha!" date:[NSDate date]];
//    MTPost *post5 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Fifth Post" content:@"Lorem ipsum dolor velit vitae luct us. Proin elit. Vivamus et sem mase. Fusce non sodales dolor. Sed elemen tum gravida sem, ac blandit massa bibendum." date:[NSDate date]];
//    MTPost *post6 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Sixth Post" content:@"Lorem ipsum dolor sit amet, consect et ur adipiscing elit. Fusce sed sagittis orci. Morbi congue sodales eleifend. Lorem ipsum dolor sit amet, con sec tetur adipiscing elit." date:[NSDate date]];
//    MTPost *post7 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Seventh Post" content:@"Lorem ipsum dolor sit amet, tu sec consectetur adipiscing elit. Duis fermentum pulvinar velit, ut ele ifend orci vehicula vitae. Sed molestie mollis tortor. Later." date:[NSDate date]];
//    MTPost *post8 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Eighth Post" content:@"Lorem ipsum dolor sit amet, aliqu am viverra mattis velit vitae luctus. Proin.consectetur adipiscing elit. Nulla tincidunt tincidunt nisl, nec lacinia dolor eleifend id. Etiam eu convallis." date:[NSDate date]];
//    MTPost *post9 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Ninth Post" content:@"Lorem ipsum dolor sit amet, consect etur adipiscing elit. Nullam in leo tortor. Interdum et malesuada fam ac ante ipsum primis in faucibus. Duis cursus. #lovingreekedtext" date:[NSDate date]];
//    MTPost *post10 = [[MTPost alloc] initWithUserName:@"Mike Tirenin" title:@"Title of Tenth Post" content:@"Lorem ipsum dolor sit amet, piscin tu elit. Aliquam sagittis quam sapien, ut vehicula augue euismod vel. Phasellus metus dui, iaculis eu cursus sit amet, elementum vitae." date:[NSDate date]];
//
//    _posts = [NSMutableArray arrayWithObjects:post1, post2, post3, post4, post5, post6, post7, post8, post9, post10, nil];
    
    MTPost *post1 = [[MTPost alloc] init];
    post1.userName = @"Mike Tirenin";
    post1.title = @"Title of First Post";
    post1.content = @"Lorem ipsum dolor sit amet, conse ur adipiscing elit. Duis mollis erat ut nunc ultrices dictum. Sed mauris quis augue scelerisque pharetra. Nullam arcu ante, aliquam luctus.";
    post1.timeStamp = [NSDate date];
    
    MTPost *post2 = [[MTPost alloc] init];
    post2.userName = @"Mike Tirenin";
    post2.title = @"Title of Second Post";
    post2.content = @"Lorem ipsum elit. Fusce vitae digni ossim nisi, nec fermentum nunc. Nunc a hendrerit magna. Suspen dis se dui neque, posuere ut porta phare tra, varius ac urna. :)";
    post2.timeStamp = [NSDate date];
    
    MTPost *post3 = [[MTPost alloc] init];
    post3.userName = @"Mike Tirenin";
    post3.title = @"Title of Third Post";
    post3.content = @"Lorem ipsum dolor sit amet, adip soit elit. Proin vitae rhoncus mase. In tu aliquet nec ligula id euismod. Vivamus nisl massa, luctus at urna vitae corfus.";
    post3.timeStamp = [NSDate date];
    
    MTPost *post4 = [[MTPost alloc] init];
    post4.userName = @"Mike Tirenin";
    post4.title = @"Title of Fourth Post";
    post4.content = @"Lorem ipsum dolor sit amet, con sec tetur adipiscing elit. Donec ligula quam, pharetra id fringilla non, elementum in augue. In non mi vel quam facilisis. Ha, ha!";
    post4.timeStamp = [NSDate date];
    
    MTPost *post5 = [[MTPost alloc] init];
    post5.userName = @"Mike Tirenin";
    post5.title = @"Title of Fifth Post";
    post5.content = @"Lorem ipsum dolor velit vitae luct us. Proin elit. Vivamus et sem mase. Fusce non sodales dolor. Sed elemen tum gravida sem, ac blandit massa bibendum.";
    post5.timeStamp = [NSDate date];
    
    MTPost *post6 = [[MTPost alloc] init];
    post6.userName = @"Mike Tirenin";
    post6.title = @"Title of Sixth Post";
    post6.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post6.timeStamp = [NSDate date];
    
    MTPost *post7 = [[MTPost alloc] init];
    post7.userName = @"Mike Tirenin";
    post7.title = @"Title of Seventh Post";
    post7.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post7.timeStamp = [NSDate date];
    
    MTPost *post8 = [[MTPost alloc] init];
    post8.userName = @"Mike Tirenin";
    post8.title = @"Title of Eighth Post";
    post8.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post8.timeStamp = [NSDate date];
    
    MTPost *post9 = [[MTPost alloc] init];
    post9.userName = @"Mike Tirenin";
    post9.title = @"Title of Ninth Post";
    post9.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post9.timeStamp = [NSDate date];
    
    MTPost *post10 = [[MTPost alloc] init];
    post10.userName = @"Mike Tirenin";
    post10.title = @"Title of Tenth Post";
    post10.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post10.timeStamp = [NSDate date];
    
    _posts = [NSMutableArray arrayWithObjects:post1, post2, post3, post4, post5, post6, post7, post8, post9, post10, nil];

//    NSLog(@"%@, %@, %@, %@", post1.userName, post1.title, post1.content, post1.timeStamp);
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// need to understand this better
//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    
//    [self.tableView reloadData];
//}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.posts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MTPostTableViewCell *postCell = [tableView dequeueReusableCellWithIdentifier:MTPostCellIdentifier forIndexPath:indexPath];
    
    MTPost *post = [self.posts objectAtIndex:indexPath.row];
   [postCell setPost:post];
    
//  old version of call from my previous MVC project
//    [postCell setPost:_posts[indexPath.row]];

// random color implemented
    int i = 0;
    while (i < 10) {
        postCell.contentView.backgroundColor = [UIColor randomColor];
        i++;
    }
    return postCell;
}
//// ligthen color example
//    UIColor *someColor = [UIColor colorWithHue:0.5 saturation:0.5 brightness:0.5 alpha:1.0];
//    NSLog(@"%@", someColor);
//    postCell.contentView.backgroundColor = [UIColor lightenColor:someColor byAmount:1.5];
//    //postCell.contentView.backgroundColor = someColor;
//    return postCell;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [_posts removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

// return from other VCs

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"EditSegue"]) {
        MTEditPostViewController *editPostVC = segue.destinationViewController;
        editPostVC.editPostDelegate = self;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        MTPost *post = [self.posts objectAtIndex:indexPath.row];
        editPostVC.post = post;
    }
    if ([segue.identifier isEqualToString:@"PublishSegue"]) {
        MTCreatePostViewController *createPostVC = segue.destinationViewController;
        createPostVC.createPostDelegate = self;
    }
    
    
//    NSLog(@"PFSegue posts is: %@", _posts);
}

- (void)addObject:(MTPost *)post
{
//    [self.navigationController popToRootViewControllerAnimated:YES];
    [_posts addObject:post];
    [self.tableView reloadData];
    [self dismissViewControllerAnimated:YES completion:nil];

//    NSLog(@"What?");
}

- (void)updateTable
{
    [self.tableView reloadData];
}

// to add background color to cells
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = cell.contentView.backgroundColor;
}

@end
