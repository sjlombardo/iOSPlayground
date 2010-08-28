//
//  PlaygroundViewController.m
//  Playground
//
//  Created by Stephen Lombardo on 1/23/09.
//  Copyright Identicentric 2009. All rights reserved.
//

#import "PlaygroundViewController.h"
#include <sys/mount.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

@implementation PlaygroundViewController

@synthesize textView;

- (IBAction)doWork:(id)sender {
	NSMutableString *log = [[NSMutableString alloc] initWithString:@"----BEGIN----\n"];
	
	int fd = open("./file1", O_RDWR|O_CREAT, 0644);
	
	struct statfs fsInfo;
	if( fstatfs(fd, &fsInfo) != -1 ){
		[log appendString:[NSString stringWithUTF8String:fsInfo.f_fstypename]];
	} else {
		[log appendString:@"Error occurred"];
	}
	
	[log appendString:@"\n----END----"];
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
