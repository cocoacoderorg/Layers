//
//  RootViewController.m
//  Layers
//
//  Created by James Hillhouse on 3/6/11.
//  Copyright 2011 PortableFrontier. All rights reserved.
//

#import "LayersRootViewController.h"



@implementation LayersRootViewController


@synthesize viewControllers;

@synthesize viewController1;
@synthesize viewController2;
@synthesize viewController3;
@synthesize viewController4;
@synthesize viewController5;
@synthesize viewController6;

@synthesize layerLessonsTableViewCell;
@synthesize layerLessonName;
@synthesize layerLessonSummary;


- (void)dealloc
{
    [viewControllers release];
    
    [viewController1 release];
    [viewController2 release];
    [viewController3 release];
    [viewController4 release];
    [viewController5 release];
    [viewController6 release];
    
    [layerLessonsTableViewCell release];
    [layerLessonName release];
    [layerLessonSummary release];
    
    [super dealloc];
}




#pragma mark -
#pragma mark UIViewController Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary    *layerDictionary1   = [[NSDictionary alloc] initWithObjectsAndKeys:@"Example 1", @"Name",
                                           @"An image without perspective. How boring.", @"Summary", nil];

    NSDictionary    *layerDictionary2   = [[NSDictionary alloc] initWithObjectsAndKeys:@"Example 2", @"Name",
                                           @"An image with correct proportions. Slightly less boring.", @"Summary", nil];
    
    NSDictionary    *layerDictionary3   = [[NSDictionary alloc] initWithObjectsAndKeys:@"Example 3", @"Name",
                                           @"Now our image has perspective. We're making progress", @"Summary", nil];
    
    NSDictionary    *layerDictionary4   = [[NSDictionary alloc] initWithObjectsAndKeys:@"Example 4", @"Name",
                                           @"Adjustable perspective and layer distance. Not too bad.", @"Summary", nil];
    
    NSDictionary    *layerDictionary5   = [[NSDictionary alloc] initWithObjectsAndKeys:@"Example 5", @"Name",
                                           @"Adjustable tilt, perspective and layer distance. The more, the merrier.", @"Summary", nil];
    
    NSDictionary    *layerDictionary6   = [[NSDictionary alloc] initWithObjectsAndKeys:@"Example 6", @"Name",
                                               @"Using gestures to manipulate angle/rotation, layer distance & perspective.", @"Summary", nil];
    
    NSArray         *anArray            = [[NSArray alloc] initWithObjects:
                                           layerDictionary1, 
                                           layerDictionary2, 
                                           layerDictionary3, 
                                           layerDictionary4, 
                                           layerDictionary5, 
                                           layerDictionary6, nil];
    self.viewControllers                = anArray;
    
    [layerDictionary1 release];
    [layerDictionary2 release];
    [layerDictionary3 release];
    [layerDictionary4 release];
    [layerDictionary5 release];
    [layerDictionary6 release];
    [anArray release];
}



- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}



- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}



- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}



- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.viewControllers            = nil;
    
    self.viewController1            = nil;
    self.viewController2            = nil;
    self.viewController3            = nil;
    self.viewController4            = nil;
    self.viewController5            = nil;
    self.viewController6            = nil;
    
    self.layerLessonsTableViewCell  = nil;
    self.layerLessonName            = nil;
    self.layerLessonSummary         = nil;
}




#pragma mark
#pragma mark UITableViewController Methods

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.viewControllers count];
}



// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *LayerLessonsCellIdentifier = @"Cell";
    
    UITableViewCell *cell           = [tableView dequeueReusableCellWithIdentifier:LayerLessonsCellIdentifier];
    if (cell == nil) 
    {
        NSArray    *nibArray        = [[NSBundle mainBundle] loadNibNamed:@"LayerLessonsTableViewCell" owner:self options:nil];
        
        if ( [nibArray count] > 0 ) 
        {
            cell    = self.layerLessonsTableViewCell;
        }
        else
        {
            NSLog(@"Uh oh, LayerLessonsTableViewCell nib file didn't load.");
        }
    }

    // Configure the cell.
    NSUInteger row                  = [indexPath row];
    NSDictionary *rowData           = [self.viewControllers objectAtIndex:row];
    
    self.layerLessonName.text       = [rowData objectForKey:@"Name"];
    self.layerLessonSummary.text    = [rowData objectForKey:@"Summary"];
    
    return cell;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 100;
}



// Override to support conditional rearranging of the table view.
//- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Return NO if you do not want the item to be re-orderable.
//    return YES;
//}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row                  = [indexPath row];

    if ( row == 0 ) 
    {
         [self.navigationController pushViewController:self.viewController1 animated:YES];
    }
    if ( row == 1 ) 
    {
        [self.navigationController pushViewController:self.viewController2 animated:YES];
    }    
    if ( row == 2 ) 
    {
        [self.navigationController pushViewController:self.viewController3 animated:YES];
    }    
    if ( row == 3 ) 
    {
        [self.navigationController pushViewController:self.viewController4 animated:YES];
    }
    if ( row == 4 ) 
    {
        [self.navigationController pushViewController:self.viewController5 animated:YES];
    }
    if ( row == 5 ) 
    {
        [self.navigationController pushViewController:self.viewController6 animated:YES];
    }

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

@end
