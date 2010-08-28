//
//  PlaygroundViewController.h
//  Playground
//
//  Created by Stephen Lombardo on 1/23/09.
//  Copyright Identicentric 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface PlaygroundViewController : UIViewController {
	IBOutlet UITextView *textView;
}

@property (nonatomic, retain) IBOutlet UITextView *textView;

- (IBAction)doWork:(id)sender;

@end

