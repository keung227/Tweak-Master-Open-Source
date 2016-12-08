#include <substrate.h>

%hook MagicSubscriptionManager
-(bool) isSubscriptionActive {
return TRUE;
}
%end

%hook MagicSubscriptionManager
-(bool) isActive {
return TRUE;
}
%end

%hook MagicSubscriptionPlan
-(int) period {
return 9999999;
}
%end

%hook MagicSubscriptionManager
-(bool) expireAtValid {
return TRUE;
}
%end

%hook SNPAccountIcon
-(bool) isVIP {
return TRUE;
}
%end

%hook SNPAccountIcon
-(bool) isVerifiedAccount {
return TRUE;
}
%end

%hook AppDelegate // Change this with your Application's Delegate. AppController, UnityAppController, GameDelegate etc.

- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 { // Popup only once at each launch of the app.
UIAlertView *igcredits = [[UIAlertView alloc] initWithTitle:@"Sing! Karaoke VIP"
                                                  message:@"\nAkun Premium VIP. ENJOY Sing A Song!!!"
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
