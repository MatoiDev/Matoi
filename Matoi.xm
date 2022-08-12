#import "Matoi.h"
#import "GcUniversal/GcColorPickerUtils.h"

UIColor * mainTintColor = nil;

%hook AppDelegate

-(void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    UIColor * navColor = mainTintColor;

    [[UINavigationBar appearance] setBarTintColor: navColor];
    [[UINavigationBar appearance] setTintColor:mainTintColor];
    [[UINavigationBar appearance] setTitleTextAttributes:
        [NSDictionary dictionaryWithObjectsAndKeys:
            mainTintColor, NSForegroundColorAttributeName, nil]];
    [[UIBarButtonItem appearance] setTintColor:mainTintColor];


    /*
    UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
    appearance.titleTextAttributes = @{NSForegroundColorAttributeName: mainTintColor};
    UINavigationBar.standardAppearance = appearance;
    */

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    %orig;

     if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
             mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
         }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}

%end

%hook SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}


- (void)sceneWillResignActive:(UIScene *)scene {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}


%end

%hook UINavigationController

-(void)viewDidLoad {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    self.navigationController.navigationBar.barTintColor = mainTintColor;
    self.navigationController.navigationBar.tintColor = mainTintColor;
    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}

%end

%hook UINavigationBar

-(void)viewWillAppear:(BOOL)animated {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
    appearance.titleTextAttributes = @{NSForegroundColorAttributeName: mainTintColor};
    self.standardAppearance = appearance;
    self.tintColor = mainTintColor;
    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
}

-(id)titleTextColor {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
    return mainTintColor;
}

-(id)buttonItemTextColor {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
    return mainTintColor;
}

-(id)barTintColor {

   if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
           mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
       }

    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
    return mainTintColor;
}
/*
-(void)setBarTintColor:(id)arg1 {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    arg1.tintColor = mainTintColor;
}
*/
%end


%hook UIDynamicCatalogColor

-(id)initWithName:(id)name assetManager:(id)assManager genericColor:(id)color {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    UIDynamicCatalogColorInstance = self;
    MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    return %orig(name, assManager, mainTintColor);
}

-(id)initForNibEncodingWithName: (id)name genericColor:(id) color {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    UIDynamicCatalogColorInstance = self;
    MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    return %orig(name, mainTintColor);
}

%end


%hook UIDynamicSystemColor

-(id)initWithName: (id)name colorsByThemeKey: (id)colorsByThemeKey {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (colorTitles) {
        UIDynamicSystemColorInstance = self;
        MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
    }
    return %orig;
}

-(id)colorsByThemeKey {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (colorTitles) {
        UIDynamicSystemColorInstance = self;
        MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
    }
    return %orig;
}

-(void)setColorsByThemeKey:(id)arg1 {
    %orig;

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (colorTitles) {
        UIDynamicSystemColorInstance = self;
        MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
    }
}

%end



%hook UIButtonLabel
-(id)textColor {
    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }
    return mainTintColor;
}

-(id)attributedText {
    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }
    return @{NSForegroundColorAttributeName: mainTintColor};
}

-(id)initWithFrame:(CGRect)frame button:(id)button {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
    self.textColor = mainTintColor;
    self.superview.tintColor = mainTintColor;
    return %orig;
}

/*
-(id)setReverseShadow:(BOOL)arg1 {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    self.textColor = mainTintColor;
    return %orig;
}
*/

%end


%hook UINavigationBarContentView
-(id)textColor {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }

    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
    return mainTintColor;
}

%end

%hook UIImageView
-(id)tintColor {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if ([[self superview] isKindOfClass: %c(UISwipeActionStandardButton)]) {
        return [UIColor blackColor];
    }
    if ([[self superview] isKindOfClass: %c(UIKBSplitImageView)]) {
        return %orig;
    }
    return mainTintColor;
}
%end

%hook UIModernBarButton
-(id)tintColor {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
    return mainTintColor;
}

%end


%hook UILabel

-(id)textColor {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
            mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
        }

    if ([[self superview] isKindOfClass: %c(UINavigationBarLargeTitleView)]) { return mainTintColor; }
    if (UIDynamicCatalogColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
       if (UIDynamicSystemColorInstance) {
           MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
       }
    }
    return %orig;
}

%end

%hook UIButtonBarButton
-(id)tintColor {

    if (!mainTintColor || (mainTintColor != [GcColorPickerUtils colorWithHex:mainColorHEX])) {
        mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];
    }


    if (UIDynamicCatalogColorInstance) {
        MSHookIvar<UIColor *>(UIDynamicCatalogColorInstance, "_cachedColor") = mainTintColor;
    }
    if (colorTitles) {
        if (UIDynamicSystemColorInstance) {
            MSHookIvar<UIColor *>(UIDynamicSystemColorInstance, "_cachedColor") = mainTintColor;
        }
    }
    return mainTintColor;
}
%end


%ctor {

    preferences = [[HBPreferences alloc] initWithIdentifier:@"com.appleworm.matoipreferences"];
    
    [preferences registerBool: &enabledMatoi default: YES forKey:@"Enabled"];
    if (!enabledMatoi) { return ; }
    [preferences registerObject: &mainColorHEX default: @"FF0000" forKey: @"MainTintColor"];
    mainTintColor = [GcColorPickerUtils colorWithHex:mainColorHEX];

}
