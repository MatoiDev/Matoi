#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>
#import <Cephei/HBPreferences.h>
#import <Cephei/HBRespringController.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBAppearanceSettings.h>

@interface MAIPBAppearance : HBAppearanceSettings
@end

@interface MAIRootListController : PSListController

@property(nonatomic, retain)MAIPBAppearance* appearanceSettings;
@property(nonatomic, retain)HBPreferences* preferences;

@property(nonatomic, retain)NSTimer * titleTimer;

@property(nonatomic, retain)UISwitch* enableMatoiSwitch;

@property(nonatomic, retain)UIBarButtonItem* barItem;

@property(nonatomic, retain)UIView* PBHeaderView;

@property(nonatomic, retain)UIImageView* PBHeaderImageView;

@property(nonatomic, retain)UILabel* MatoiLabel;
@property(nonatomic, retain)UILabel* MatoiVersionLabel;

@property(nonatomic, retain)UIBlurEffect* blurEffect;
@property(nonatomic, retain)UIVisualEffectView* blurOnPBScreen;

- (void)setEnabled;
- (void)doRespring;
- (void)setUpEnabledSwitch;

- (void)goVK;
- (void)goGH;
- (void)goTG;

@end
