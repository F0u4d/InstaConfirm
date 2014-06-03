#import <Preferences/Preferences.h>

@interface InstaConfirmListController: PSListController {
}
@end

@implementation InstaConfirmListController

-(void)twitter{
	if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetbot:///user_profile/" stringByAppendingString:@"iF0u4d"]]];
    
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitterrific:///profile?screen_name=" stringByAppendingString:@"iF0u4d"]]];
    
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetings:///user?screen_name=" stringByAppendingString:@"iF0u4d"]]];
    
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitter://user?screen_name=" stringByAppendingString:@"iF0u4d"]]];
    
	else
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"https://mobile.twitter.com/" stringByAppendingString:@"iF0u4d"]]];
} // twitter

-(void)mail{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:fouad.raheb%40gmail.com?subject=SocialDuplicator%20(1.0)%20Support"]];
} // mail


- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"InstaConfirm" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
