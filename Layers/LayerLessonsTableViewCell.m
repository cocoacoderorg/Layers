//
//  LayerLessonTableViewCell.m
//  Layers
//
//  Created by James Hillhouse IV on 1/23/2011.
//  Copyright 2011 PortableFrontier. All rights reserved.
//

#import "LayerLessonsTableViewCell.h"


@implementation LayerLessonsTableViewCell

@synthesize layerLessonNameLabel;
@synthesize layerLessonSummaryLabel;
@synthesize layerLessonIconImage;


- (void)dealloc 
{
	[layerLessonNameLabel release];
	[layerLessonSummaryLabel release];
	[layerLessonIconImage release];
    
    [super dealloc];
}


@end
