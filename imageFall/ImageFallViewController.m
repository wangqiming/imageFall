//
//  ImageFallViewController.m
//  imageFall
//
//  Created by wangqiming on 16/3/2.
//  Copyright © 2016年 yy. All rights reserved.
//

#import "ImageFallViewController.h"
#import "ImageCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ImageFallViewController ()
@property(strong, nonatomic) NSArray* imageArr;
@end

@implementation ImageFallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _imageArr = @[@"http://edu100.bs2cdn.100.com/98fbee4cfdb67214bdb9f4c0a0a2780a45559858.jpg",
                  @"http://edu100.bs2cdn.100.com/896203df2b3d112680feb8dc40bdc0c275b67e2d.jpg",
                  @"http://edu100.bs2cdn.100.com/6e7dbe2a171952d0a31c2ad239a47c2d03313503.jpg",
                  @"http://edu100.bs2cdn.100.com/f70b0a58f6c767d071cb7795dc5ad3955a82783c.jpg",
                  @"http://edu100.bs2cdn.100.com/03aafa1a5510b0f46efce092be2474353ad710e9.jpg",
                  @"http://edu100.bs2cdn.100.com/4424c4858928d3f603db32ab6290e295ff9d163a.jpg",
                  @"http://edu100.bs2cdn.100.com/72873804b27ee285b1b0da03a2c6d7ec72d71ae1.jpg",
                  @"http://edu100.bs2cdn.100.com/80e7ccda154323bc3bd6f5464986259c891249d3.jpg",
                  @"http://edu100.bs2cdn.100.com/808df2bccb034de9a5ba77c402407a1ccf243334.jpg",
                  @"http://edu100.bs2cdn.100.com/52e3654fa68a45e4e45e8f2c97571863c7b4439e.jpg",
                  @"http://edu100.bs2cdn.100.com/dbd42d7e16f6f8126c55570a8c4a7bcd694cd2f7.jpg",
                  @"http://edu100.bs2cdn.100.com/b75e820bc9aed58e881a1bf249d04ef18c6e5ab5.jpg",
                  @"http://edu100.bs2cdn.100.com/685f31e7bad1aac1dae662b91115d20cf6812414.jpg"];
    
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([ImageCell class]) bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:NSStringFromClass([ImageCell class])];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.imageArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 180;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ImageCell class]) forIndexPath:indexPath];
    
    [cell.image sd_setImageWithURL:[NSURL URLWithString:_imageArr[indexPath.row]]];

    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
