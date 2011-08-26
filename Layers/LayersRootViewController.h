//
//  RootViewController.h
//  Layers
//
//  Created by James Hillhouse on 3/6/11.
//  Copyright 2011 PortableFrontier. All rights reserved.
//

#import <UIKit/UIKit.h>


@class LayerFunViewController1;
@class LayerFunViewController2;
@class LayerFunViewController3;
@class LayerFunViewController4;
@class LayerFunViewController5;
@class LayerFunViewController6;


@interface LayersRootViewController : UITableViewController <UINavigationBarDelegate, UITableViewDelegate, UITableViewDataSource>
{
    NSArray                         *viewControllers;
    
    LayerFunViewController1         *viewController1;
    LayerFunViewController2         *viewController2;
    LayerFunViewController3         *viewController3;
    LayerFunViewController4         *viewController4;
    LayerFunViewController5         *viewController5;
    LayerFunViewController6         *viewController6;

    UITableViewCell                 *layerLessonsTableViewCell;
    UILabel                         *layerLessonName;
    UILabel                         *layerLessonSummary;
}

@property (nonatomic, retain)                       NSArray                     *viewControllers;

@property (nonatomic, retain)       IBOutlet        LayerFunViewController1     *viewController1;
@property (nonatomic, retain)       IBOutlet        LayerFunViewController2     *viewController2;
@property (nonatomic, retain)       IBOutlet        LayerFunViewController3     *viewController3;
@property (nonatomic, retain)       IBOutlet        LayerFunViewController4     *viewController4;
@property (nonatomic, retain)       IBOutlet        LayerFunViewController5     *viewController5;
@property (nonatomic, retain)       IBOutlet        LayerFunViewController6     *viewController6;

@property (nonatomic, retain)       IBOutlet        UITableViewCell             *layerLessonsTableViewCell;
@property (nonatomic, retain)       IBOutlet        UILabel                     *layerLessonName;
@property (nonatomic, retain)       IBOutlet        UILabel                     *layerLessonSummary;


@end
