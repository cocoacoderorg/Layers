//
//  LayerLessonTableViewCell.h
//  Layers
//
//  Created by James Hillhouse IV on 1/23/2011.
//  Copyright 2011 PortableFrontier. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LayerLessonsTableViewCell : UITableViewCell 
{
	UILabel        *layerLessonNameLabel;
	UILabel        *layerLessonSummaryLabel;
	UIImageView    *layerLessonIconImage;
}

@property (nonatomic, retain)       IBOutlet    UILabel       *layerLessonNameLabel;
@property (nonatomic, retain)       IBOutlet    UILabel       *layerLessonSummaryLabel;
@property (nonatomic, retain)       IBOutlet    UIImageView   *layerLessonIconImage;

@end
