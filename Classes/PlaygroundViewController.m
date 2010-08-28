//
//  PlaygroundViewController.m
//  Playground
//
//  Created by Stephen Lombardo on 1/23/09.
//  Copyright Identicentric 2009. All rights reserved.
//

#import "PlaygroundViewController.h"

@implementation PlaygroundViewController

@synthesize textView;

- (IBAction)doWork:(id)sender {
	NSMutableString *log = [[NSMutableString alloc] initWithString:@"----BEGIN----\n"];
	
	[log appendString:@"----END----\n"];
	textView.text = log;	
	[log release];
}



/*
// Override initWithNibName:bundle: to load the view using a nib file then perform additional customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
}
*/


- (void)viewDidLoad {
    [super viewDidLoad];
	textView.text = @"";
	textView.editable = NO;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

@end
