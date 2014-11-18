//
//  Gene.h
//  SoyKB
//
//  Created by digbio lab on 10/15/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gene : NSObject

@property (strong,nonatomic) NSString * Glymaid;
@property (strong,nonatomic) NSString * QuerySize;
@property (strong,nonatomic) NSString * Hit_1;
@property (strong,nonatomic) NSString * Annotation_1;
@property (strong,nonatomic) NSString * Score_1;
@property (strong,nonatomic) NSString * Evalue_1;
@property (strong,nonatomic) NSString * Identity_1;

#pragma mark -
#pragma mark Class Methods

- (id)initWithGlymaid: (NSString *) glymaid andQuerySize: (NSString *) querysize andHit1: (NSString *) hit1 andAnnotation1: (NSString *) annotation1 andScore1: (NSString *) score1 andEvalue1: (NSString *) evalue1 andIdentity1: (NSString *) identity1;

@end
