//
//  Gene.m
//  SoyKB
//
//  Created by digbio lab on 10/15/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import "Gene.h"

@implementation Gene
@synthesize Glymaid,QuerySize,Hit_1,Annotation_1,Score_1,Evalue_1,Identity_1;

- (id)initWithGlymaid: (NSString *) glymaid andQuerySize: (NSString *) querysize andHit1: (NSString *) hit1 andAnnotation1: (NSString *) annotation1 andScore1: (NSString *) score1 andEvalue1: (NSString *) evalue1 andIdentity1: (NSString *) identity1
{
    self = [super init];
    if(self){
        Glymaid=glymaid;
        QuerySize=querysize;
        Hit_1=hit1;
        Annotation_1=annotation1;
        Score_1=score1;
        Evalue_1=evalue1;
        Identity_1=identity1;
    }
    return self;
}

@end
