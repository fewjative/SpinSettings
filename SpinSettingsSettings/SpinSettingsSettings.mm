#import <Preferences/Preferences.h>
#import <UIKit/UIKit.h>

@interface SpinSettingsSettingsListController: PSListController {
}
@end

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@end

@implementation SpinSettingsSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"SpinSettingsSettings" target:self] retain];
	}
	return _specifiers;

}

-(void)twitter {

	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mobile.twitter.com/Fewjative"]];

}

-(void)save
{
    [self.view endEditing:YES];
}

@end
