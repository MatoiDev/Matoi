#import <UIKit/UIKit.h>
#import "substrate.h"
#import "logos/logos.h"
#import "GcUniversal/GcColorPickerUtils.h"
#import <Cephei/HBPreferences.h>

@interface UIButtonLabel: UILabel
@property(nonatomic, strong, readwrite)UIColor *textColor;
@end

id UIDynamicSystemColorInstance = nil;
id UIDynamicCatalogColorInstance = nil;
NSString * mainColorHEX = nil;

HBPreferences* preferences = nil;

BOOL enabledMatoi = NO;

BOOL colorTitles = NO;