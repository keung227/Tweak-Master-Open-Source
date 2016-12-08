#include <substrate.h>

%hook PTPerson
-(bool) isPremium {
return TRUE;
}
%end

%hook PTPurchase
-(bool) isPremiumPurchase {
return TRUE;
}
%end

%hook PTPost
-(bool) isPremiumStory {
return TRUE;
}
%end

%hook FBSDKApplicationDelegate

-(void)applicationDidBecomeActive:(id)arg {

UIAlertView *credits = [[UIAlertView alloc] initWithTitle:@"Premium Member"
					          message:@"Download Semua Sticker dan Filter, Akses Semua Toko dengan Gratis!"
                                                 delegate:self
  					cancelButtonTitle:@"Tutup"
  					otherButtonTitles:@"Tweak Lainya", nil];
[credits show];
[credits release];
return %orig;
}

%new
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

NSString *button = [alertView buttonTitleAtIndex:buttonIndex];

	if([button isEqualToString:@"Tweak Lainya"])
	{
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://paxcex.github.io"]];
	}
}
%end
