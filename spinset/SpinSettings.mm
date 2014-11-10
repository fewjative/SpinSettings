#import <Preferences/Preferences.h>
#import <UIKit/UIKit.h>

@interface SpinSettingsListController: PSListController {
}
@end

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@end

@implementation SpinSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"SpinSettings" target:self] retain];
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
