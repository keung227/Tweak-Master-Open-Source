#import "writeData.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

/* To MSHook Offsets, use https://iosgods.com/topic/22718-mshook-tweakpatcherfunction-tweakpatcher-withwithout-psedittextcellpsslidercell-generator-online/ */
/* To Easily Generate Tweak.xm and Preferences Plist https://iosgods.com/topic/24138-code-inject-generator-online-tweakxm-preferencesplist/ */

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.pxcex.vivavideovip.plist"

inline bool GetPrefBool(NSString *key) {
		return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%hook XYIAPMgr

-(bool) isPurchasedUnlockEverything {
	if(GetPrefBool(@"1")) {            //instead "Coin" put what you want, but there must be "k"
	return TRUE;                        //here what you want return your function
	}
	return %orig;
	}
	%end




/* Popup with a link

Varieties of a UIAlertView Popup can be found here: https://iosgods.com/topic/13988-varieties-of-uialertview-types-to-use-in-your-tweaks-patchers/

*/


%hook XYAppDelegate // Change this with your Application's Delegate. AppController, UnityAppController, GameDelegate etc.

- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 { // Popup only once at each launch of the app.
UIAlertView *igcredits = [[UIAlertView alloc] initWithTitle:@"VivaVideo VIP "
                                                  message:@"\nEditing Video Tanpa Tanda Air dan Durasi Video Tanpa Batas"
                                                 delegate:self
										cancelButtonTitle:@"Thanks"
										otherButtonTitles:@"Visit Us", nil];
[igcredits show];
[igcredits release];
return %orig();
}

%new
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

	NSString *button = [alertView buttonTitleAtIndex:buttonIndex];

	if([button isEqualToString:@"Visit Us"]) {
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/fajar.loro"]];
	}
}
%end
