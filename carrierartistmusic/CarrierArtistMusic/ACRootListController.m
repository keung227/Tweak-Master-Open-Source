#import <SCLAlertView/SCLAlertView.h>
#include "ACRootListController.h"

@implementation ACRootListController


- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"CarrierArtistMusic" target:self];
	}
	return _specifiers;
}

-(void)respring{
	#pragma clang diagnostic push
	#pragma clang diagnostic ignored "-Wdeprecated-declarations"
	system("killall -9 SpringBoard");
	#pragma clang diagnostic pop
}

- (void)viewDidLoad {
    [super viewDidLoad];

		SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];

		    [alert addButton: @"Visit" actionBlock: ^(void) {
		[[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"https://www.facebook.com/fajar.loro"]];
		}];


		    alert.shouldDismissOnTapOutside = NO; //Dismiss alert when tapped outside? YES or NO
		    alert.backgroundType = Shadow; // Blur, Shadow or Transparent background
		    //alert.customViewColor = [UIColor redColor]; // Overwrite SCLAlertView (Buttons, top circle and borders) colors


		    //alert.showAnimationType = SlideInFromLeft; // Animation when the popup is shown. Default is SlideInFromTop
		    alert.hideAnimationType = SlideOutToBottom; // Animation when closing the popup. Default is FadeOut

		[alert showInfo: nil // Success, Error, Notice, Warning, Info, Edit, Custom, Waiting
		subTitle: @"Edit Custome Text Carrier When No Track Is Playing Here\n"
		closeButtonTitle: @"Thanks" // The text on the button which closes the popup
		duration: 0.0f]; // Seconds until the popup auto closes.
		        return;
		}

-(void)save{
	[self.view endEditing:true];
}
- (UIStatusBarStyle)preferredStatusBarStyle{
	return UIStatusBarStyleLightContent;
}

@end
