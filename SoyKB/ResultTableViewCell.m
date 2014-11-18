//
//  ResultTableViewCell.m
//  SoyKB
//
//  Created by digbio lab on 10/23/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import "ResultTableViewCell.h"

@implementation ResultTableViewCell

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

@end
