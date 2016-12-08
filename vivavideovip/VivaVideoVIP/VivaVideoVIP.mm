#import <Preferences/Preferences.h>

@interface VivaVideoVIPListController: PSListController {
}
@end

@implementation VivaVideoVIPListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"VivaVideoVIP" target:self] retain];
	}
	return _specifiers;
}

/* The "Visit iOSGods.com" link inside the Preferences button */
- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.instagram.com/pxcex/"]];
}
@end

// vim:ft=objc
