//
//  ResultTableViewController.h
//  SoyKB
//
//  Created by digbio lab on 10/23/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gene.h"

@interface ResultTableViewController : UITableViewController

@property (strong,nonatomic) Gene * gene2;

@property (strong, nonatomic) NSArray * Info;

@end
