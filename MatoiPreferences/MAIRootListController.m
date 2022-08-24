#import <Foundation/Foundation.h>
#import "MAIRootListController.h"
#import "spawn.h"

@implementation MAIRootListController

- (UITableViewStyle)tableViewStyle {
	return UITableViewStyleInsetGrouped;
}

-(void)viewDidLoad {

	[super viewDidLoad];

	self.appearanceSettings = [MAIPBAppearance  new];
	self.hb_appearanceSettings = [self appearanceSettings];
	self.preferences = [[HBPreferences alloc] initWithIdentifier:@"dr.erast.matoipreferences"];

    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAlways;
    self.title = @"Matoi";

	self.enableMatoiSwitch = [UISwitch new];
	[[self enableMatoiSwitch] setOnTintColor: [UIColor redColor]];
	[[self enableMatoiSwitch] addTarget: self action: @selector(setEnabled) forControlEvents:UIControlEventTouchUpInside];

	self.barItem = [[UIBarButtonItem alloc] initWithCustomView: [self enableMatoiSwitch]];
	self.navigationItem.rightBarButtonItem = [self barItem];
	[[self navigationItem] setRightBarButtonItem:[self barItem]];
	self.navigationItem.titleView = [UIView new];

	self.navigationController.navigationBar.prefersLargeTitles = YES;

	self.MatoiLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
	[[self MatoiLabel] setFont:[UIFont boldSystemFontOfSize:25]];
	[[self MatoiLabel] setText:@"Matoi"];
	[[self MatoiLabel] setTextColor:[UIColor redColor]];
	[[self MatoiLabel] setTextAlignment:NSTextAlignmentCenter];
	[[[self navigationItem] titleView] addSubview:[self MatoiLabel]];

	self.MatoiLabel.translatesAutoresizingMaskIntoConstraints = NO;
	[NSLayoutConstraint activateConstraints:@[
			[self.MatoiLabel.topAnchor constraintEqualToAnchor:self.navigationItem.titleView.topAnchor],
			[self.MatoiLabel.leadingAnchor constraintEqualToAnchor:self.navigationItem.titleView.leadingAnchor],
			[self.MatoiLabel.trailingAnchor constraintEqualToAnchor:self.navigationItem.titleView.trailingAnchor],
			[self.MatoiLabel.bottomAnchor constraintEqualToAnchor:self.navigationItem.titleView.bottomAnchor],
	]];

	self.MatoiVersionLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
	[[self MatoiVersionLabel] setFont:[UIFont boldSystemFontOfSize:17]];
	[[self MatoiVersionLabel] setText:@"v1.0.0"];
	[[self MatoiVersionLabel] setTextColor:[UIColor redColor]];
	[[self MatoiVersionLabel] setTextAlignment:NSTextAlignmentCenter];
	[[[self navigationItem] titleView] addSubview:[self MatoiVersionLabel]];

	[[self MatoiVersionLabel] setTranslatesAutoresizingMaskIntoConstraints: NO];
	[NSLayoutConstraint activateConstraints:@[
			[self.MatoiVersionLabel.topAnchor constraintEqualToAnchor:self.navigationItem.titleView.topAnchor],
			[self.MatoiVersionLabel.leadingAnchor constraintEqualToAnchor:self.navigationItem.titleView.leadingAnchor],
			[self.MatoiVersionLabel.trailingAnchor constraintEqualToAnchor:self.navigationItem.titleView.trailingAnchor],
			[self.MatoiVersionLabel.bottomAnchor constraintEqualToAnchor:self.navigationItem.titleView.bottomAnchor],
	]];

	[[self MatoiVersionLabel] setAlpha:0];

	self.PBHeaderView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 200, 200)];

	self.PBHeaderImageView = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 200, 200)];
	[self.PBHeaderView addSubview: self.PBHeaderImageView];

	self.PBHeaderImageView.image = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/MatoiPreferences.bundle/header.png"];;
	[self.PBHeaderImageView setContentMode:UIViewContentModeScaleAspectFill];
	[self.PBHeaderImageView setClipsToBounds:YES];

	self.PBHeaderImageView.translatesAutoresizingMaskIntoConstraints = NO;

	[NSLayoutConstraint activateConstraints:@[

			[self.PBHeaderImageView.topAnchor constraintEqualToAnchor: self.PBHeaderView.topAnchor constant:0],
			[self.PBHeaderImageView.leadingAnchor constraintEqualToAnchor:self.PBHeaderView.leadingAnchor constant:0],
			[self.PBHeaderImageView.trailingAnchor constraintEqualToAnchor:self.PBHeaderView.trailingAnchor constant:0],
			[self.PBHeaderImageView.bottomAnchor constraintEqualToAnchor:self.PBHeaderView.bottomAnchor constant: 0]

	]];

	self.blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleProminent];
	self.blurOnPBScreen = [[UIVisualEffectView alloc] initWithEffect:[self blurEffect]];

}

- (void)viewWillAppear:(BOOL)animated {

	[super viewWillAppear:animated];

	[self setUpEnabledSwitch];

	CGRect frame = self.table.bounds;
	frame.origin.y = -frame.size.height;

	[[self blurOnPBScreen] setFrame:[[self view] bounds]];
	[[self blurOnPBScreen] setAlpha:1];
	[[self view] addSubview:[self blurOnPBScreen]];

	[UIView animateWithDuration:0.4 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
		[[self blurOnPBScreen] setAlpha:0];
	} completion:nil];

}

- (void)viewWillDisappear:(BOOL)animated {

	[super viewWillDisappear:animated];

	[UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
		[[self blurOnPBScreen] setAlpha:1];
	} completion:nil];

}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];

	[[self titleTimer] invalidate];
	self.titleTimer =  [NSTimer scheduledTimerWithTimeInterval:3.0
														target:self
													  selector:@selector(changeLabel)
													  userInfo:nil
													   repeats:YES];

}

- (void) changeLabel {
	if ([[self MatoiLabel] alpha] == 0 && [[self MatoiVersionLabel] alpha] == 1) {
		[UIView animateWithDuration:0.3 animations:^{
			[[self MatoiVersionLabel] setAlpha:0];
			[[self MatoiLabel] setAlpha:1];
		}];
		return;
	} else {
		[UIView animateWithDuration:0.3 animations:^{
			[[self MatoiVersionLabel] setAlpha:1];
			[[self MatoiLabel] setAlpha:0];
		}];
		return;
	}
}


- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	tableView.tableHeaderView = [self PBHeaderView];

	return [super tableView:tableView cellForRowAtIndexPath:indexPath];

}

- (void)setEnabled {

	[[self blurOnPBScreen] setFrame:[[self view] bounds]];
	[[self view] addSubview:[self blurOnPBScreen]];

	if ([[[self preferences] objectForKey:@"Enabled"] isEqual:@(YES)]) {
		[[self preferences] setBool:NO forKey:@"Enabled"];
		[[self blurOnPBScreen] setAlpha:0];
		[UIView animateWithDuration:0.7 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
			[[self blurOnPBScreen] setAlpha:1];
		} completion:^(BOOL finished) {
			[self doRespring];
		}];
	} else {
		[[self preferences] setBool:YES forKey:@"Enabled"];
		[[self blurOnPBScreen] setAlpha:0];
		[UIView animateWithDuration:0.7 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
			[[self blurOnPBScreen] setAlpha:1];
		} completion:^(BOOL finished) {
			[self doRespring];
		}];
	}
}

- (void)setUpEnabledSwitch {

	if ([[[self preferences] objectForKey:@"Enabled"] isEqual:@(YES)])
		[[self enableMatoiSwitch] setOn:YES animated:YES];
	else
		[[self enableMatoiSwitch] setOn:NO animated:YES];

}

- (void)doRespring {
	if (![[NSFileManager defaultManager] fileExistsAtPath:@"/Library/MobileSubstrate/DynamicLibraries/shuffle.dylib"])
		[HBRespringController respringAndReturnTo:[NSURL URLWithString:@"prefs:root=Matoi"]];
	else
		[HBRespringController respringAndReturnTo:[NSURL URLWithString:@"prefs:root=Tweaks&path=Matoi"]];
}

- (void)killNotes {

    pid_t pid;
    const char * args[] = { "killall", "MobileNotes", NULL };
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char * const *)args, NULL);

}

- (void)goVK {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://vk.com/f4ther_of_all"] options:@{} completionHandler:nil];
}

- (void)goGH {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/MatoiDev"] options:@{} completionHandler:nil];
}

- (void)goTG {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/Uncle_Milty"] options:@{} completionHandler:nil];
}

@end
