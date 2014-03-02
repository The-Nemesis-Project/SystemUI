.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;
    }
.end annotation


# static fields
.field public static final ACTION_KNOX_MODE_CHANGED:Ljava/lang/String; = "com.sec.android.enterprisenotificationcenter.ENTERPRISE_MODE_CHANGE"

.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field public static final CHATTY:Z = false

.field private static final CLOSE_PANEL_WHEN_EMPTIED:Z = false

.field private static final DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "notification_panel_brightness_adjustment"

.field public static final DB_DISPLAY_BATTERY_PERCENTAGE:Ljava/lang/String; = "display_battery_percentage"

.field private static final DB_KIDS_MODE:Ljava/lang/String; = "kids_mode_enabled"

.field public static final DEBUG:Z = false

.field public static final DEBUG_CLINGS:Z = false

.field public static final DEBUG_GESTURES:Z = false

.field public static final DUMPTRUCK:Z = true

.field public static final ENABLE_NOTIFICATION_PANEL_CLING:Z = false

.field private static final HIDE_ICONS_BELOW_SCORE:I = -0xa

.field private static final INTRUDER_ALERT_DECAY_MS:I = 0x0

.field private static final LOW_BATTERY_THRESHOLD:I = 0x5

.field public static final MSG_CLOSE_MINI_MODE_APPS_PANEL:I = 0x425

.field private static final MSG_CLOSE_PANELS:I = 0x3e9

.field public static final MSG_OPEN_MINI_MODE_APPS_PANEL:I = 0x424

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_SETTINGS_PANEL:I = 0x3ea

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final NUM_TRAYOPEN_SOUND_CHANNELS:I = 0x1

.field private static final SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_OFF"

.field private static final SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_ON"

.field public static final SETTINGS_DRAG_SHORTCUT:Z = true

.field public static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar"

.field private static final TIMEOUT:I = 0xfa0

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PhoneStatusBar"

.field public static isSweepedNotification:Z

.field public static mDataTypeBrand:Ljava/lang/String;


# instance fields
.field final ACTION_SET_MOUSE_POS:Ljava/lang/String;

.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field final MOUSE_EVENT:Ljava/lang/String;

.field final MOUSE_X:Ljava/lang/String;

.field final MOUSE_Y:Ljava/lang/String;

.field final REL_POS_FLAG:Ljava/lang/String;

.field final WAIT_TIME:Ljava/lang/String;

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field mAbsPos:[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mAnimAccel:F

.field mAnimLastTimeNanos:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mAttCarrierLabel:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseAlpha:F

.field mBasicSetting:Landroid/view/View;

.field mBasicSettingDivider:Landroid/view/View;

.field mBasicSettingsButton:Landroid/widget/ImageView;

.field mBasicSettingsButtonAnim:Landroid/animation/Animator;

.field private mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mBasicSettingsButtonTablet:Landroid/widget/ImageView;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

.field private mBrightnessEnablebyBattery:Z

.field private mBrightnessEnablebyDisableFlag:Z

.field private mBrightnessEnablebyLongLifeMode:Z

.field private mBrightnessEnablebySettings:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallOnGoingView:Landroid/view/View;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelHeight:I

.field private mCarrierLabelSetting:Landroid/widget/TextView;

.field private mCarrierLabelVisible:Z

.field mClearButton:Landroid/view/View;

.field mClearButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mCling:Landroid/view/ViewGroup;

.field private mClingShown:Z

.field private mClock:Landroid/view/View;

.field mClockCenter:Landroid/view/View;

.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field private mClockLeft:Landroid/view/View;

.field private mClockVisibility:Z

.field mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

.field mClosing:Z

.field private mCollapseAccelPx:F

.field private mCollapseMinDisplayFraction:F

.field private mCoverOpen:Z

.field mCues:[Landroid/view/View;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field mDateTimeView:Landroid/view/View;

.field mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field mDreamManager:Landroid/service/dreams/IDreamManager;

.field mEdgeBorder:I

.field mEditButtonAnim:Landroid/animation/Animator;

.field private mEmergencyCallLabel:Landroid/widget/TextView;

.field private mExpandAccelPx:F

.field private mExpandMinDisplayFraction:F

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxOutputVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field mFlingVelocity:F

.field mFlingY:I

.field mFlipSettingsView:Landroid/view/View;

.field mFlipSettingsViewAnim:Landroid/animation/Animator;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field mHSView:Landroid/widget/HorizontalScrollView;

.field mHasFlipSettings:Z

.field mHasSettingsPanel:Z

.field mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field private mIntruderAlertView:Lcom/android/systemui/statusbar/policy/IntruderAlertView;

.field mIsDisplaySearchPanel:Z

.field private mIsKnoxStatusBar:Z

.field mIsMiniAppPanelLoadedProperly:Z

.field private mIsTransparentStatusBar:Z

.field private mKidsModeActivated:Z

.field private mKidsModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

.field private mLightsOnAnimation:Landroid/animation/Animator;

.field private mLightsOutAnimation:Landroid/animation/Animator;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mLongLifeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;

.field private final mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

.field private mMiniModeAppsPanel:Landroid/view/ViewGroup;

.field private mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

.field private mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

.field mMiniModeTrayClass:Ljava/lang/Class;

.field mMiniModeTrayEnabled:Z

.field private mMiniModeTrayView:Landroid/view/View;

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:I

.field private mNavigationBarContainerView:Landroid/view/View;

.field private mNavigationBarInAnim:Landroid/view/animation/Animation;

.field private mNavigationBarOutAnim:Landroid/view/animation/Animation;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationIconHints:I

.field private mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNotificationButton:Landroid/widget/ImageView;

.field mNotificationButtonAnim:Landroid/animation/Animator;

.field private mNotificationButtonListener:Landroid/view/View$OnClickListener;

.field private mNotificationHeaderHeight:I

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field mNotificationPanelDebugText:Landroid/widget/TextView;

.field mNotificationPanelGravity:I

.field mNotificationPanelHeader:Landroid/view/View;

.field mNotificationPanelIsFullScreenWidth:Z

.field mNotificationPanelMarginBottomPx:I

.field mNotificationPanelMarginPx:I

.field mNotificationPanelMinHeightFrac:F

.field mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

.field mOrientation:I

.field mPixelFormat:I

.field mPositionTmp:[I

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

.field mQueueLock:Ljava/lang/Object;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mScrollView:Landroid/widget/ScrollView;

.field mScrollViewAnim:Landroid/animation/Animator;

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field mSettingButton:Landroid/view/View;

.field mSettingButtonDivider:Landroid/view/View;

.field mSettingButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mSettingsButton:Landroid/widget/ImageView;

.field mSettingsButtonAnim:Landroid/animation/Animator;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

.field mSettingsEditButton:Landroid/widget/ImageView;

.field private mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

.field mSettingsEditButtonTablet:Landroid/widget/ImageView;

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

.field mSettingsPanelGravity:I

.field private mShadow:Landroid/view/View;

.field private mShouldShowLatest:Z

.field private mShouldShowNoNoti:Z

.field private mShouldShowOngoing:Z

.field private mShowCarrierInPanel:Z

.field private mShowCarrierInSettingPanel:Z

.field private mShowClockByClearCover:Z

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarContents:Landroid/widget/LinearLayout;

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mSuppressStatusBarDrags:Z

.field mSystemIconArea:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field private mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mToggleSlider:Landroid/widget/RelativeLayout;

.field mTracking:Z

.field mTrackingPosition:I

.field mTrackingViewAttached:Z

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;

.field mViewDelta:I

.field operatorLogoIcon:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSweepedNotification:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 244
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 245
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 246
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowLatest:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowNoNoti:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowOngoing:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverOpen:Z

    .line 248
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 302
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 308
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 309
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInSettingPanel:Z

    .line 324
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 340
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 366
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 370
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 371
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 381
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowClockByClearCover:Z

    .line 389
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockVisibility:Z

    .line 393
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 396
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 399
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    .line 401
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 404
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayEnabled:Z

    .line 405
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 406
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    .line 407
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 408
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 410
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 423
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPoolId:[I

    .line 425
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadow:Landroid/view/View;

    .line 427
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCues:[Landroid/view/View;

    move-object v0, v1

    .line 431
    check-cast v0, Lcom/android/systemui/statusbar/GestureRecorder;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 436
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingViewAttached:Z

    .line 443
    const-string v0, "com.sec.android.spc.eventcontrol.ACTION_SET_MOUSE_POS"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ACTION_SET_MOUSE_POS:Ljava/lang/String;

    .line 444
    const-string v0, "event"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->MOUSE_EVENT:Ljava/lang/String;

    .line 445
    const-string v0, "x"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->MOUSE_X:Ljava/lang/String;

    .line 446
    const-string v0, "y"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->MOUSE_Y:Ljava/lang/String;

    .line 447
    const-string v0, "rel_pos_flag"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->REL_POS_FLAG:Ljava/lang/String;

    .line 448
    const-string v0, "wait_time"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->WAIT_TIME:Ljava/lang/String;

    .line 451
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z

    .line 452
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z

    .line 454
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 455
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    .line 467
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 468
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 1088
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongLifeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;

    .line 1238
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1245
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1246
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1253
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    .line 2181
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2190
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2200
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2360
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 2361
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 2363
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 2364
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_IN:I

    .line 2365
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION:I

    .line 3070
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3290
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 3415
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 3478
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

    .line 3511
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 3528
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 3553
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    .line 3559
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3834
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 3844
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 3977
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

    .line 3978
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    .line 3979
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingDivider:Landroid/view/View;

    .line 3980
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSetting:Landroid/view/View;

    .line 3981
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonDivider:Landroid/view/View;

    .line 3982
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    .line 4031
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    .line 4067
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$001(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockCenter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkCenterClock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyIntrudingNotification:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPwdChangeEnforced()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClingShown:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSuppressStatusBarDrags:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    return-void
.end method

.method static synthetic access$5910(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateBatteryColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$5915(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateBatteryImage()V

    return-void
.end method

.method static synthetic access$5920(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doMarquee(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->playTraySound()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$910(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNetContSettings()V

    return-void
.end method

.method static synthetic access$920(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTSMSettings()V

    return-void
.end method

.method private addIntruderView()V
    .locals 6

    .prologue
    .line 1354
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7de

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1365
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1367
    const-string v1, "IntruderAlert"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1369
    const v1, 0x7f100018

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Lcom/android/systemui/statusbar/policy/IntruderAlertView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1310
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addStatusBarWindow()V
    .locals 6

    .prologue
    .line 3197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    .line 3204
    .local v2, height:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, 0x800048

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 3214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 3222
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-nez v0, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3226
    :cond_0
    return-void
.end method

.method private areLightsOn()Z
    .locals 1

    .prologue
    .line 2948
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1276
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkCenterClock()Z
    .locals 3

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_clock_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doMarquee(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 3647
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DateView marqueed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DateView;->setSelected(Z)V

    .line 3649
    return-void

    .line 3647
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1333
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1344
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1348
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1349
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1350
    return-object v0
.end method

.method private initTraySound()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4156
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPool:Landroid/media/SoundPool;

    .line 4159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAudioManager:Landroid/media/AudioManager;

    .line 4160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 4161
    return-void
.end method

.method private isPwdChangeEnforced()Z
    .locals 3

    .prologue
    .line 2069
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2071
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v1

    if-lez v1, :cond_0

    .line 2072
    const/4 v1, 0x1

    .line 2074
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 3081
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3082
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 3083
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3085
    :cond_0
    return-object v0
.end method

.method private loadNotificationShade()V
    .locals 21

    .prologue
    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    .line 1628
    .local v2, N:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v17, toShowOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1630
    .local v12, toShowLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v13, toShowMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    .local v14, toShowMiniConContextAware:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    .local v16, toShowMiniConKnoxMode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    .local v15, toShowMiniConKidsMode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v7

    .line 1637
    .local v7, provisioned:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_7

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v19, v0

    sub-int v20, v2, v5

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    .line 1639
    .local v4, ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v7, :cond_1

    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 1637
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1640
    :cond_1
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1642
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1645
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1646
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1647
    :cond_2
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v19, v0

    const/16 v20, 0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1648
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1649
    :cond_3
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v19, v0

    const/16 v20, 0x100

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1650
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1652
    :cond_4
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1655
    :cond_5
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1656
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1658
    :cond_6
    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1663
    .end local v4           #ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_7
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_8

    .line 1664
    const/16 v19, 0x0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1663
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1666
    :cond_8
    const/4 v5, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    .line 1667
    const/16 v19, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1666
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1669
    :cond_9
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_a

    .line 1670
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1675
    :cond_a
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    .local v11, toRemoveOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_c

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1679
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1680
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1684
    .end local v3           #child:Landroid/view/View;
    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1686
    .local v9, toRemoveLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_e

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1688
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 1689
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1693
    .end local v3           #child:Landroid/view/View;
    :cond_e
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1695
    .local v10, toRemoveMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_10

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1697
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 1698
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1702
    .end local v3           #child:Landroid/view/View;
    :cond_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1703
    .local v8, remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 1706
    .end local v8           #remove:Landroid/view/View;
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1707
    .restart local v8       #remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 1710
    .end local v8           #remove:Landroid/view/View;
    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1711
    .restart local v8       #remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_a

    .line 1715
    .end local v8           #remove:Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1716
    const/4 v5, 0x0

    :goto_b
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_15

    .line 1717
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1718
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-nez v19, :cond_14

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 1716
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1724
    .end local v18           #v:Landroid/view/View;
    :cond_15
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1727
    const/4 v5, 0x0

    :goto_c
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_17

    .line 1728
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1729
    .restart local v18       #v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-nez v19, :cond_16

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1727
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1724
    .end local v18           #v:Landroid/view/View;
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 1735
    :cond_17
    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1738
    const/4 v5, 0x0

    :goto_d
    :try_start_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_19

    .line 1739
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1740
    .restart local v18       #v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-nez v19, :cond_18

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1738
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1735
    .end local v18           #v:Landroid/view/View;
    :catchall_1
    move-exception v19

    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v19

    .line 1744
    :cond_19
    :try_start_6
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1747
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-eqz v19, :cond_1a

    .line 1748
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowOngoing:Z

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateOngoingNoti()V

    .line 1753
    :goto_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-eqz v19, :cond_1b

    .line 1754
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowLatest:Z

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLatestNoti()V

    .line 1759
    :goto_f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1c

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1c

    .line 1760
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowNoNoti:Z

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNoNoti()V

    .line 1764
    :goto_10
    return-void

    .line 1744
    :catchall_2
    move-exception v19

    :try_start_7
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v19

    .line 1750
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowOngoing:Z

    goto :goto_e

    .line 1756
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowLatest:Z

    goto :goto_f

    .line 1762
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowNoNoti:Z

    goto :goto_10
.end method

.method private notiCustomColor()Z
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_color_custom"

    const v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .parameter "screenOn"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1330
    :goto_0
    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged()V
    .locals 2

    .prologue
    .line 2962
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2965
    :goto_0
    return-void

    .line 2963
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private playTraySound()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 4165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 4167
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 4176
    :goto_0
    return-void

    .line 4169
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 4170
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 4167
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private prepareNavigationBarView()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSearchPanel()V

    .line 1301
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "ll"

    .prologue
    .line 1380
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1381
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1382
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1383
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 1384
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 1381
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1387
    :cond_1
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1321
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-nez v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetBatteryPercentageObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->onChange(Z)V

    .line 4147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_acc_battery"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_hide_battery"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battcolorchange"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_text_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4150
    return-void
.end method

.method private resetBrightnessEnableObserver()V
    .locals 5

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->onChange(Z)V

    .line 4139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_brightness_adjustment"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4142
    return-void
.end method

.method private resetTSMNetContObserver()V
    .locals 5

    .prologue
    .line 4130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;->onChange(Z)V

    .line 4132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_carrier_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_custom_carrier"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_carrier_text"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_data_icon"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_att_carrier"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4136
    return-void
.end method

.method private resetTSMObserver()V
    .locals 5

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;->onChange(Z)V

    .line 4139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_aosp_clear"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_toggle_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_hide_latest"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_hide_nonoti"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_hide_ongoin"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_background_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_color_custom"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_color_custom"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_background_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4142
    return-void
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3703
    return-void
.end method

.method static final saturate(F)F
    .locals 3
    .parameter "a"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 3250
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method private sbarCustomColor()Z
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_color_custom"

    const v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private setBrightnessControllerVisivility()V
    .locals 4

    .prologue
    .line 4052
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4053
    .local v0, brightnessController:Landroid/view/View;
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mBrightnessEnablebySettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBrightnessEnablebyBattery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBrightnessEnablebyDisableFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    if-eqz v0, :cond_0

    .line 4058
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    if-eqz v1, :cond_1

    .line 4059
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4064
    :cond_0
    :goto_0
    return-void

    .line 4061
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntruderAlertVisibility(Z)V
    .locals 0
    .parameter "vis"

    .prologue
    .line 3706
    return-void
.end method

.method private setPileLayers(I)V
    .locals 14
    .parameter "layerType"

    .prologue
    .line 2732
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v2

    .line 2734
    .local v2, count:I
    packed-switch p1, :pswitch_data_0

    .line 2765
    :cond_0
    :pswitch_0
    return-void

    .line 2736
    :pswitch_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2737
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2736
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2741
    .end local v3           #i:I
    :pswitch_2
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 2742
    .local v5, location:[I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLocationInWindow([I)V

    .line 2744
    const/4 v9, 0x0

    aget v4, v5, v9

    .line 2745
    .local v4, left:I
    const/4 v9, 0x1

    aget v7, v5, v9

    .line 2746
    .local v7, top:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v9

    add-int v6, v4, v9

    .line 2747
    .local v6, right:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedViewMaxHeight()I

    move-result v9

    add-int v0, v7, v9

    .line 2749
    .local v0, bottom:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2751
    .local v1, childBounds:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2752
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2753
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2755
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v10, v5, v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v5, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2758
    invoke-virtual {v1, v4, v7, v6, v0}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2759
    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2751
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setStatusBarLowProfile(Z)V
    .locals 15
    .parameter "lightsOut"

    .prologue
    .line 2904
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightsOutAnimation:Landroid/animation/Animator;

    if-nez v9, :cond_0

    .line 2905
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v10, 0x7f09005e

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2906
    .local v6, notifications:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v10, 0x7f090065

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2907
    .local v8, systemIcons:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v10, 0x7f090067

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2908
    .local v7, signal:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v10, 0x7f090069

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2909
    .local v1, battery:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v10, 0x7f090068

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2910
    .local v2, batterytext:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v10, 0x7f09006a

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    .local v3, clock:Landroid/view/View;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2913
    .local v5, lightsOutAnim:Landroid/animation/AnimatorSet;
    const/16 v9, 0xa

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013e

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f00

    aput v14, v12, v13

    invoke-static {v1, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f00

    aput v14, v12, v13

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f00

    aput v14, v12, v13

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f00

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013c

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f00

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013b

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f00

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013d

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2921
    const-wide/16 v9, 0x2ee

    invoke-virtual {v5, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2923
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2924
    .local v4, lightsOnAnim:Landroid/animation/AnimatorSet;
    const/16 v9, 0xa

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBaseAlpha:F

    aput v14, v12, v13

    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013e

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBaseAlpha:F

    aput v14, v12, v13

    invoke-static {v1, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013c

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013b

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    aput v14, v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v14, 0x7f09013d

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2932
    const-wide/16 v9, 0xfa

    invoke-virtual {v4, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2934
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightsOutAnimation:Landroid/animation/Animator;

    .line 2935
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightsOnAnimation:Landroid/animation/Animator;

    .line 2938
    .end local v1           #battery:Landroid/view/View;
    .end local v2           #batterytext:Landroid/view/View;
    .end local v3           #clock:Landroid/view/View;
    .end local v4           #lightsOnAnim:Landroid/animation/AnimatorSet;
    .end local v5           #lightsOutAnim:Landroid/animation/AnimatorSet;
    .end local v6           #notifications:Landroid/view/View;
    .end local v7           #signal:Landroid/view/View;
    .end local v8           #systemIcons:Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightsOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    .line 2939
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightsOnAnimation:Landroid/animation/Animator;

    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    .line 2941
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightsOutAnimation:Landroid/animation/Animator;

    .line 2942
    .local v0, a:Landroid/animation/Animator;
    :goto_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2944
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2945
    return-void

    .line 2941
    .end local v0           #a:Landroid/animation/Animator;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightsOnAnimation:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private updateBatteryColor()I
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBattLevColor()I

    move-result v0

    return v0
.end method

.method private updateBatteryImage()V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateImage()V

    return-void
.end method

.method private updateClearLoc()V
    .locals 5

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_aosp_clear"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f090138

    goto :goto_0

    :cond_0
    const v1, 0x7f09007c

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTextResources()V

    return-void
.end method

.method private updateLatestNoti()V
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_hide_latest"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_aosp_clear"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowLatest:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateNetContSettings()V
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_att_carrier"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/Feature;->setPLMNIconDisplay(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSettings()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_carrier_color"

    const v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNoNoti()V
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_hide_nonoti"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowNoNoti:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateNotiColor()I
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_background_color"

    const v2, -0x1000000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private updateNotiToggs(Z)V
    .locals 3
    .parameter "singleLineZ"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_toggle_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateScrollView(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateOngoingNoti()V
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_hide_ongoin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowOngoing:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateSBarColor()I
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_background_color"

    const v2, -0x1000000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private updateScrollView(Z)V
    .locals 5
    .parameter "useStockTopMargin"

    .prologue
    const/4 v2, 0x0

    .line 1405
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int v2, v0, v1

    .line 1406
    .local v2, topMargin:I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1407
    .local v0, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1408
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setExpandValues(Z)V

    return-void
.end method

.method private updateShowSearchHoldoff()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1622
    return-void
.end method

.method private updateTSMSettings()V
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notiCustomColor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColor(I)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiToggs(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowNoNoti:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowLatest:Z

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShouldShowOngoing:Z

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->transparentizeStatusBar(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNoNoti()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateOngoingNoti()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLatestNoti()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClearLoc()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v1, 0x7f02026d

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "v"

    .prologue
    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public IsFlipSettingShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4087
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 4093
    :cond_0
    :goto_0
    return v0

    .line 4090
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v2, :cond_2

    .line 4091
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4093
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 1392
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1393
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 1413
    .local v0, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v0, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1415
    :cond_0
    const/4 v1, 0x0

    .line 1417
    .local v1, immersive:Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1460
    :goto_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 1463
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 1468
    :try_start_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1481
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1482
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    .line 1475
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyIntrudingNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v2, :cond_1

    .line 1476
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V

    goto :goto_2

    .line 1469
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1421
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected addPanelWindows()V
    .locals 25

    .prologue
    .line 4179
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 4181
    .local v8, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_6

    .line 4184
    :try_start_0
    const-string v3, "com.android.systemui.statusbar.MiniModeAppsPanel"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 4185
    const/16 v19, -0x1

    .line 4187
    .local v19, miniAppPanelId:I
    :try_start_1
    const-class v3, Lcom/android/systemui/R$layout;

    const-string v4, "status_bar_mini_mode_apps_panel"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 4188
    .local v15, layoutField:Ljava/lang/reflect/Field;
    if-eqz v15, :cond_0

    .line 4189
    invoke-virtual {v15, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result v19

    .line 4201
    .end local v15           #layoutField:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    if-lez v19, :cond_1

    .line 4202
    const/4 v3, 0x0

    :try_start_2
    move/from16 v0, v19

    invoke-static {v8, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 4205
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 4206
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 4207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4212
    :goto_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x7e8

    const v6, 0x800128

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 4222
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x53

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4223
    const-string v3, "MiniModeAppsPanel"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v4, "closeMiniAppsPanel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 4228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v4, "openMiniAppsPanel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 4230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4231
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const-class v4, Lcom/android/systemui/statusbar/BaseStatusBar;

    aput-object v4, v20, v3

    .line 4232
    .local v20, paramTypes1:[Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v4, "setBar"

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 4233
    .local v17, mSetBar:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/4 v3, 0x0

    aput-object p0, v22, v3

    .line 4235
    .local v22, params:[Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v21, v3

    .line 4236
    .local v21, paramTypes2:[Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    aput-object v4, v23, v3

    .line 4237
    .local v23, params2:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v4, "setStatusBarHandler"

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 4239
    .local v18, mSetHandler:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 4259
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v17           #mSetBar:Ljava/lang/reflect/Method;
    .end local v18           #mSetHandler:Ljava/lang/reflect/Method;
    .end local v19           #miniAppPanelId:I
    .end local v20           #paramTypes1:[Ljava/lang/Class;
    .end local v21           #paramTypes2:[Ljava/lang/Class;
    .end local v22           #params:[Ljava/lang/Object;
    .end local v23           #params2:[Ljava/lang/Object;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_6

    .line 4260
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayView:Landroid/view/View;

    .line 4261
    new-instance v3, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    .line 4262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x10e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4263
    new-instance v3, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    .line 4264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x10e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_5

    .line 4267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const v4, 0x7f09001d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarContainerView:Landroid/view/View;

    .line 4268
    new-instance v3, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarOutAnim:Landroid/view/animation/Animation;

    .line 4269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x10e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4270
    new-instance v3, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarInAnim:Landroid/view/animation/Animation;

    .line 4271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarInAnim:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x10e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarOutAnim:Landroid/view/animation/Animation;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCues:[Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCues:[Landroid/view/View;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/16 v24, 0x0

    aget-object v7, v7, v24

    const v24, 0x7f090020

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v7, v3, v4

    .line 4288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCues:[Landroid/view/View;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCues:[Landroid/view/View;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/16 v24, 0x1

    aget-object v7, v7, v24

    const v24, 0x7f090020

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v7, v3, v4

    .line 4289
    const/16 v16, 0x0

    .line 4291
    .local v16, mCue:Landroid/view/View;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    const/4 v3, 0x4

    if-ge v12, v3, :cond_5

    .line 4292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCues:[Landroid/view/View;

    aget-object v16, v3, v12

    .line 4293
    if-eqz v16, :cond_4

    .line 4294
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 4295
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4304
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4291
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 4191
    .end local v12           #i:I
    .end local v16           #mCue:Landroid/view/View;
    .restart local v19       #miniAppPanelId:I
    :catch_0
    move-exception v10

    .line 4192
    .local v10, e:Ljava/lang/SecurityException;
    :try_start_3
    const-string v3, "PhoneStatusBar"

    const-string v4, "SecurityException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_0

    .line 4242
    .end local v10           #e:Ljava/lang/SecurityException;
    .end local v19           #miniAppPanelId:I
    :catch_1
    move-exception v11

    .line 4243
    .local v11, ex:Ljava/lang/ClassNotFoundException;
    const-string v3, "PhoneStatusBar"

    const-string v4, "ClassNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2

    .line 4193
    .end local v11           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v19       #miniAppPanelId:I
    :catch_2
    move-exception v10

    .line 4194
    .local v10, e:Ljava/lang/NoSuchFieldException;
    :try_start_4
    const-string v3, "PhoneStatusBar"

    const-string v4, "NoSuchFieldException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_0

    .line 4245
    .end local v10           #e:Ljava/lang/NoSuchFieldException;
    .end local v19           #miniAppPanelId:I
    :catch_3
    move-exception v11

    .line 4246
    .local v11, ex:Ljava/lang/NoSuchMethodException;
    const-string v3, "PhoneStatusBar"

    const-string v4, "NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2

    .line 4195
    .end local v11           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v19       #miniAppPanelId:I
    :catch_4
    move-exception v10

    .line 4196
    .local v10, e:Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v3, "PhoneStatusBar"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_0

    .line 4248
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .end local v19           #miniAppPanelId:I
    :catch_5
    move-exception v11

    .line 4249
    .local v11, ex:Ljava/lang/IllegalAccessException;
    const-string v3, "PhoneStatusBar"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2

    .line 4197
    .end local v11           #ex:Ljava/lang/IllegalAccessException;
    .restart local v19       #miniAppPanelId:I
    :catch_6
    move-exception v10

    .line 4198
    .local v10, e:Ljava/lang/IllegalAccessException;
    :try_start_6
    const-string v3, "PhoneStatusBar"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_0

    .line 4251
    .end local v10           #e:Ljava/lang/IllegalAccessException;
    .end local v19           #miniAppPanelId:I
    :catch_7
    move-exception v11

    .line 4252
    .local v11, ex:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "PhoneStatusBar"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2

    .line 4209
    .end local v11           #ex:Ljava/lang/reflect/InvocationTargetException;
    .restart local v19       #miniAppPanelId:I
    :cond_3
    :try_start_7
    const-string v3, "PhoneStatusBar"

    const-string v4, "MiniModeAppsPanel is not loaded properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_1

    .line 4254
    .end local v19           #miniAppPanelId:I
    :catch_8
    move-exception v11

    .line 4255
    .local v11, ex:Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    const-string v4, "Loading MiniAppsPanel has failed."

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4256
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2

    .line 4306
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v12       #i:I
    .restart local v16       #mCue:Landroid/view/View;
    :cond_4
    const-string v3, "PhoneStatusBar"

    const-string v4, "can not load resource. (R.id.traybar_handler)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4310
    .end local v12           #i:I
    .end local v16           #mCue:Landroid/view/View;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->initTraySound()V

    .line 4314
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-nez v3, :cond_9

    .line 4315
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadow:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 4316
    const/4 v13, -0x1

    .line 4318
    .local v13, id:I
    :try_start_8
    const-class v3, Lcom/android/systemui/R$id;

    const-string v4, "miniapp_tray_dot"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 4319
    .local v14, idfield:Ljava/lang/reflect/Field;
    if-eqz v14, :cond_8

    .line 4320
    invoke-virtual {v14, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_9

    move-result v13

    .line 4328
    .end local v14           #idfield:Ljava/lang/reflect/Field;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadow:Landroid/view/View;

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 4329
    .local v9, dotView:Landroid/view/View;
    if-eqz v9, :cond_9

    .line 4330
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4334
    .end local v9           #dotView:Landroid/view/View;
    .end local v13           #id:I
    :cond_9
    return-void

    .line 4325
    .restart local v13       #id:I
    :catch_9
    move-exception v3

    goto :goto_5

    .line 4324
    :catch_a
    move-exception v3

    goto :goto_5

    .line 4323
    :catch_b
    move-exception v3

    goto :goto_5

    .line 4322
    :catch_c
    move-exception v3

    goto :goto_5
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 2268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 2269
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 4
    .parameter "flags"

    .prologue
    const/16 v3, 0x401

    const/16 v2, 0x3fd

    .line 2272
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "animateCollapsePanels"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2288
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 2289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2293
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 2296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 2303
    :goto_0
    return-void

    .line 2299
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    goto :goto_0
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 2614
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "animateCollapseQuickSettings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 2616
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 2

    .prologue
    .line 2378
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_1

    .line 2393
    :cond_0
    :goto_0
    return-void

    .line 2383
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 2388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 2

    .prologue
    .line 2482
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "animateExpandSettingsPanel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2498
    :cond_0
    :goto_0
    return-void

    .line 2488
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_2

    .line 2489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 2490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_0

    .line 2493
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    if-eqz v0, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->expand()V

    goto :goto_0
.end method

.method public applyEDMPolicy()V
    .locals 6

    .prologue
    .line 3942
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarHidden()Z

    move-result v2

    .line 3943
    .local v2, isStatusBarHidden:Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eq v3, v2, :cond_0

    .line 3944
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    .line 3946
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v3, :cond_2

    .line 3947
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3948
    const-string v3, "PhoneStatusBar"

    const-string v4, "Removed status bar view"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3959
    .end local v2           #isStatusBarHidden:Z
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNavigationBarHidden()Z

    move-result v1

    .line 3960
    .local v1, isNavigationBarHidden:Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-eq v3, v1, :cond_1

    .line 3961
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    .line 3963
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-eqz v3, :cond_3

    .line 3964
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3972
    .end local v1           #isNavigationBarHidden:Z
    :cond_1
    :goto_1
    return-void

    .line 3950
    .restart local v2       #isStatusBarHidden:Z
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3951
    const-string v3, "PhoneStatusBar"

    const-string v4, "Added status bar view"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3954
    .end local v2           #isStatusBarHidden:Z
    :catch_0
    move-exception v0

    .line 3955
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Applying policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3966
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isNavigationBarHidden:Z
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3969
    .end local v1           #isNavigationBarHidden:Z
    :catch_1
    move-exception v0

    .line 3970
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Applying policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public coverCheck(Z)V
    .locals 0
    .parameter "coveropen"

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverOpen:Z

    return-void
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 3189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 3192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPanelWindows()V

    .line 3193
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 2080
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    return-object v0
.end method

.method public disable(I)V
    .locals 12
    .parameter "state"

    .prologue
    const/high16 v11, 0x8

    const/high16 v10, 0x2

    const/high16 v9, 0x1

    const/high16 v8, 0x3fc0

    const/4 v7, 0x0

    .line 1923
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 1924
    .local v2, old:I
    xor-int v0, p1, v2

    .line 1925
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 1932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1933
    .local v1, flagdbg:Ljava/lang/StringBuilder;
    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    and-int v4, p1, v9

    if-eqz v4, :cond_9

    const-string v4, "EXPAND"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    and-int v4, v0, v9

    if-eqz v4, :cond_a

    const-string v4, "* "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    and-int v4, p1, v10

    if-eqz v4, :cond_b

    const-string v4, "ICONS"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    and-int v4, v0, v10

    if-eqz v4, :cond_c

    const-string v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    const/high16 v4, 0x4

    and-int/2addr v4, p1

    if-eqz v4, :cond_d

    const-string v4, "ALERTS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    const/high16 v4, 0x4

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    const-string v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    and-int v4, p1, v11

    if-eqz v4, :cond_f

    const-string v4, "TICKER"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    and-int v4, v0, v11

    if-eqz v4, :cond_10

    const-string v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    const/high16 v4, 0x10

    and-int/2addr v4, p1

    if-eqz v4, :cond_11

    const-string v4, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    const/high16 v4, 0x10

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    const-string v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    const/high16 v4, 0x40

    and-int/2addr v4, p1

    if-eqz v4, :cond_13

    const-string v4, "BACK"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    const/high16 v4, 0x40

    and-int/2addr v4, v0

    if-eqz v4, :cond_14

    const-string v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1946
    const/high16 v4, 0x20

    and-int/2addr v4, p1

    if-eqz v4, :cond_15

    const-string v4, "HOME"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    const/high16 v4, 0x20

    and-int/2addr v4, v0

    if-eqz v4, :cond_16

    const-string v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    const/high16 v4, 0x100

    and-int/2addr v4, p1

    if-eqz v4, :cond_17

    const-string v4, "RECENT"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    const/high16 v4, 0x100

    and-int/2addr v4, v0

    if-eqz v4, :cond_18

    const-string v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    const/high16 v4, 0x80

    and-int/2addr v4, p1

    if-eqz v4, :cond_19

    const-string v4, "CLOCK"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    const/high16 v4, 0x80

    and-int/2addr v4, v0

    if-eqz v4, :cond_1a

    const-string v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    const/high16 v4, 0x200

    and-int/2addr v4, p1

    if-eqz v4, :cond_1b

    const-string v4, "SEARCH"

    :goto_12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    const/high16 v4, 0x200

    and-int/2addr v4, v0

    if-eqz v4, :cond_1c

    const-string v4, "* "

    :goto_13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    const/high16 v4, 0x1000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1d

    const-string v4, "BRIGHTNESS"

    :goto_14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    const/high16 v4, 0x1000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1e

    const-string v4, "* "

    :goto_15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const/high16 v4, 0x10

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    .line 1960
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1961
    const/high16 v4, 0x10

    and-int/2addr v4, p1

    if-eqz v4, :cond_1f

    .line 1962
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xaf

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1985
    :cond_0
    :goto_16
    const/high16 v4, 0x80

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 1986
    const/high16 v4, 0x80

    and-int/2addr v4, p1

    if-nez v4, :cond_20

    const/4 v3, 0x1

    .line 1987
    .local v3, show:Z
    :goto_17
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 1990
    .end local v3           #show:Z
    :cond_1
    const/high16 v4, 0x1000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 2001
    :cond_2
    and-int v4, v0, v9

    if-eqz v4, :cond_3

    .line 2002
    and-int v4, p1, v9

    if-eqz v4, :cond_3

    .line 2003
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2007
    :cond_3
    const/high16 v4, 0x360

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    .line 2012
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 2014
    :cond_4
    const/high16 v4, 0x100

    and-int/2addr v4, p1

    if-eqz v4, :cond_5

    .line 2016
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fd

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2017
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fd

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2021
    :cond_5
    and-int v4, v0, v10

    if-eqz v4, :cond_22

    .line 2022
    and-int v4, p1, v10

    if-eqz v4, :cond_21

    .line 2023
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_6

    .line 2024
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 2027
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xaf

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2056
    :cond_7
    :goto_18
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v4, :cond_8

    .line 2057
    const/high16 v4, 0x900

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    .line 2058
    const/high16 v4, 0x900

    and-int/2addr v4, p1

    if-eqz v4, :cond_8

    .line 2059
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x425

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2060
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x425

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2065
    :cond_8
    return-void

    .line 1934
    :cond_9
    const-string v4, "expand"

    goto/16 :goto_0

    .line 1935
    :cond_a
    const-string v4, " "

    goto/16 :goto_1

    .line 1936
    :cond_b
    const-string v4, "icons"

    goto/16 :goto_2

    .line 1937
    :cond_c
    const-string v4, " "

    goto/16 :goto_3

    .line 1938
    :cond_d
    const-string v4, "alerts"

    goto/16 :goto_4

    .line 1939
    :cond_e
    const-string v4, " "

    goto/16 :goto_5

    .line 1940
    :cond_f
    const-string v4, "ticker"

    goto/16 :goto_6

    .line 1941
    :cond_10
    const-string v4, " "

    goto/16 :goto_7

    .line 1942
    :cond_11
    const-string v4, "system_info"

    goto/16 :goto_8

    .line 1943
    :cond_12
    const-string v4, " "

    goto/16 :goto_9

    .line 1944
    :cond_13
    const-string v4, "back"

    goto/16 :goto_a

    .line 1945
    :cond_14
    const-string v4, " "

    goto/16 :goto_b

    .line 1946
    :cond_15
    const-string v4, "home"

    goto/16 :goto_c

    .line 1947
    :cond_16
    const-string v4, " "

    goto/16 :goto_d

    .line 1948
    :cond_17
    const-string v4, "recent"

    goto/16 :goto_e

    .line 1949
    :cond_18
    const-string v4, " "

    goto/16 :goto_f

    .line 1950
    :cond_19
    const-string v4, "clock"

    goto/16 :goto_10

    .line 1951
    :cond_1a
    const-string v4, " "

    goto/16 :goto_11

    .line 1952
    :cond_1b
    const-string v4, "search"

    goto/16 :goto_12

    .line 1953
    :cond_1c
    const-string v4, " "

    goto/16 :goto_13

    .line 1954
    :cond_1d
    const-string v4, "brightness"

    goto/16 :goto_14

    .line 1955
    :cond_1e
    const-string v4, " "

    goto/16 :goto_15

    .line 1970
    :cond_1f
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1971
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xaf

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_16

    .line 1986
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_17

    .line 2036
    :cond_21
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 2037
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xaf

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_18

    .line 2050
    :cond_22
    and-int v4, v0, v11

    if-eqz v4, :cond_7

    .line 2051
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_7

    and-int v4, p1, v11

    if-eqz v4, :cond_7

    .line 2052
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    goto/16 :goto_18
.end method

.method public dismissIntruder()V
    .locals 4

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyIntrudingNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 3724
    :goto_0
    return-void

    .line 3717
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyIntrudingNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyIntrudingNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyIntrudingNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3721
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3094
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3095
    :try_start_0
    const-string v5, "Current Status Bar state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mTrackingPosition="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTicking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTracking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mNotificationPanel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-nez v5, :cond_0

    const-string v5, "null"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimY="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimVel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimAccel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimLastTimeNanos="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTimeNanos:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimatingReveal="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mViewDelta="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisplayMetrics="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLatestNotifications: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTickerView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScrollView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " scroll "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3117
    const-string v5, "  mNavigationBarView="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3118
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v5, :cond_1

    .line 3119
    const-string v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v6

    .line 3126
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 3127
    .local v0, N:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  notification icons: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 3129
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 3130
    .local v1, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3132
    .local v4, n:Landroid/service/notification/StatusBarNotification;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " score="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         notification="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         tickerText=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         expandable="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandable()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " userexpanded="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " expandheight="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3128
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3100
    .end local v0           #N:I
    .end local v1           #e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2           #i:I
    .end local v4           #n:Landroid/service/notification/StatusBarNotification;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " params="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 3115
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3121
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3138
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3140
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 3141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  system icons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 3143
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 3144
    .local v3, ic:Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3138
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #ic:Lcom/android/systemui/statusbar/StatusBarIconView;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 3167
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StatusBar Features : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    const-string v5, "    mShowSimCheckPopup=true"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    const-string v5, "    mUseStatusBarMarquee=true"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mShowMenuKeyAlways="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mUseAnimatedBrightnessIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mShowWorldClock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowWorldClock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mRoamingIconDisplay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mPLMNIconDisplay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mSoundProfile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mHideWifiInAndOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    const-string v5, "    mUseTouchWizGUI=true"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    const-string v5, "    mShowRecentRemoveAllButton=true"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mShowRecentOnlyStringForVZW="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mUseRedBatteryIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    return-void
.end method

.method public flipPanels()V
    .locals 2

    .prologue
    .line 2603
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "flipPanels"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_0

    .line 2605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    .line 2611
    :cond_0
    :goto_0
    return-void

    .line 2608
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    goto :goto_0
.end method

.method public flipToNotifications()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2396
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "flipToNotifications"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2398
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2399
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2400
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2401
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2402
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2405
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTranslationY(F)V

    .line 2408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setMinimumHeight(I)V

    .line 2409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 2410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiToggs(Z)V

    .line 2421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v5, [F

    aput v8, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setMinHeightWhenDone(Landroid/animation/Animator;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    .line 2441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v8, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 2446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v9, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 2451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v8, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    .line 2461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v9, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    .line 2475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_NOTI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2476
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToNotifications in EXPAND_NOTI_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    return-void
.end method

.method public flipToSettings()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const-wide/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2527
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "flipToSettings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    if-eqz v0, :cond_0

    .line 2600
    :goto_0
    return-void

    .line 2531
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2532
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2533
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2534
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2535
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2536
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2549
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiToggs(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setMinimumHeight(I)V

    .line 2550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 2551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 2552
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiToggs(Z)V

    .line 2554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    .line 2565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    aput v9, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 2570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    aput v10, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 2575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    aput v9, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    .line 2583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    aput v10, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    .line 2597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_aosp_clear"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2598
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToSettings in EXPAND_SETTING_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected getExpandedViewMaxHeight()I
    .locals 2

    .prologue
    .line 3255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginBottomPx:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method protected getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "layoutParams"

    .prologue
    .line 1149
    const/4 v6, 0x0

    .line 1150
    .local v6, opaque:Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x7de

    const v4, 0x820100

    if-eqz v6, :cond_0

    const/4 v5, -0x1

    :goto_0
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1158
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1159
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1164
    :goto_1
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1165
    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1166
    const v1, 0x10301f3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1167
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1169
    return-object v0

    .line 1150
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v5, -0x3

    goto :goto_0

    .line 1161
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1162
    const/high16 v1, 0x3f40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_1
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "layoutParams"

    .prologue
    const/4 v1, -0x1

    .line 1174
    const/4 v6, 0x0

    .line 1175
    .local v6, opaque:Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    if-eqz v6, :cond_1

    move v5, v1

    :goto_0
    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1183
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1186
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1187
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1189
    const v1, 0x10301f3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1190
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1192
    return-object v0

    .line 1175
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v5, -0x3

    goto :goto_0
.end method

.method protected getStatusBarGravity()I
    .locals 1

    .prologue
    .line 1226
    const/16 v0, 0x37

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1230
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1232
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1235
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 3854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 3855
    return-void
.end method

.method public hideCallOnGoingView()V
    .locals 2

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeView(Landroid/view/View;)V

    .line 3916
    return-void
.end method

.method public hideCling()V
    .locals 3

    .prologue
    .line 2772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isClinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSuppressStatusBarDrags:Z

    .line 2777
    :cond_0
    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    .prologue
    .line 1218
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 1219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1221
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1223
    return-void
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2848
    .local v0, act:I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSuppressStatusBarDrags:Z

    if-eqz v2, :cond_0

    .line 2856
    :goto_0
    return v1

    .line 2850
    :cond_0
    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClingShown:Z

    if-nez v1, :cond_1

    .line 2851
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCling()V

    .line 2856
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2853
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideCling()V

    goto :goto_1
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "ti"
    .parameter "a"

    .prologue
    .line 2346
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2347
    return-object p2
.end method

.method public isClinging()Z
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3761
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3763
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x105000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 3766
    const v3, 0x7f0e0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3768
    .local v1, newIconSize:I
    const v3, 0x7f0e001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3771
    .local v0, newIconHPadding:I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 3773
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 3774
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 3778
    :cond_1
    const/high16 v3, 0x7f0e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 3780
    const v3, 0x7f0e0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    .line 3781
    const v3, 0x7f0e0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    .line 3782
    const v3, 0x7f0e0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    .line 3783
    const v3, 0x7f0e0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    .line 3785
    const v3, 0x7f0e0027

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    .line 3786
    const v3, 0x7f0e0028

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    .line 3788
    const v3, 0x7f0e0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    .line 3789
    const v3, 0x7f0e002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    .line 3791
    const v3, 0x7f0e0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    .line 3793
    const v3, 0x7f0e0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxOutputVelocityPx:F

    .line 3795
    const v3, 0x7f0e0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginBottomPx:I

    .line 3797
    const v3, 0x7f0e003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginPx:I

    .line 3799
    const v3, 0x7f0d000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 3800
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    if-gtz v3, :cond_2

    .line 3801
    const v3, 0x800033

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 3803
    :cond_2
    const v3, 0x7f0d000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    .line 3804
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSettingsPanelGravity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    if-gtz v3, :cond_3

    .line 3806
    const v3, 0x800035

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    .line 3809
    :cond_3
    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    .line 3810
    const v3, 0x7f0e0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationHeaderHeight:I

    .line 3812
    const v3, 0x7f0e0041

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 3813
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    cmpg-float v3, v3, v7

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 3814
    :cond_4
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 3818
    :cond_5
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 11

    .prologue
    const/high16 v10, 0x10a

    const/high16 v9, 0x3f80

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2623
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "makeExpandedInvisible"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v4, :cond_1

    .line 2717
    :cond_0
    :goto_0
    return-void

    .line 2633
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v4, :cond_2

    .line 2634
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v6, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 2639
    :cond_2
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "Mini Controller text scroll : OFF"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2641
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2642
    .local v3, miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 2643
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2644
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2642
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2649
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 2652
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2653
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    .line 2657
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v4, :cond_d

    .line 2659
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 2660
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 2661
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 2662
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 2663
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 2664
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 2667
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2668
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 2669
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setMinimumHeight(I)V

    .line 2672
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setTranslationY(F)V

    .line 2673
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiToggs(Z)V

    .line 2674
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2675
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2676
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2677
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2678
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 2679
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2680
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2681
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2684
    :cond_d
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 2685
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 2686
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_e

    .line 2687
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 2688
    :cond_e
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 2691
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2692
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2693
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2694
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x20001

    and-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2695
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2697
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    if-nez v4, :cond_f

    .line 2698
    invoke-virtual {p0, v7, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    .line 2702
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 2704
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v4, :cond_10

    .line 2705
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 2706
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 2710
    :cond_10
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v4, :cond_0

    .line 2711
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 2712
    invoke-virtual {p0, v7, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    goto/16 :goto_0
.end method

.method makeExpandedInvisibleSoon()V
    .locals 4

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2620
    return-void
.end method

.method makeExpandedVisible(Z)V
    .locals 7
    .parameter "revealAfterDraw"

    .prologue
    const/4 v6, 0x1

    .line 2212
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "makeExpandedVisible"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v4, :cond_0

    .line 2265
    :goto_0
    return-void

    .line 2219
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v4, :cond_1

    .line 2220
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 2221
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 2230
    :cond_1
    :goto_1
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "Mini Controller text scroll : ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2232
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2233
    .local v3, miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 2234
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2235
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2233
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2222
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2223
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    goto :goto_1

    .line 2240
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v3       #miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 2241
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 2242
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_5

    .line 2243
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 2247
    :cond_5
    const/16 v4, -0x2710

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2251
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2252
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2253
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2254
    const/4 v4, -0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2255
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2259
    if-eqz p1, :cond_6

    .line 2263
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 2264
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doMarquee(Z)V

    goto/16 :goto_0
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 30

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 518
    .local v7, contextTheme:Landroid/content/Context;
    sget-boolean v26, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v26, :cond_0

    .line 519
    new-instance v7, Landroid/view/ContextThemeWrapper;

    .end local v7           #contextTheme:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x103012b

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v7, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 522
    .restart local v7       #contextTheme:Landroid/content/Context;
    :cond_0
    move-object v6, v7

    .line 525
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 527
    .local v17, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 530
    const v26, 0x7f0e0017

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 532
    const v26, 0x7f040033

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09005a

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f0900be

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 551
    .local v9, holder:Lcom/android/systemui/statusbar/phone/PanelHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09006e

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    const/16 v26, 0x1

    :goto_0
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelIsFullScreenWidth:Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f090011

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    new-instance v27, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 567
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v26

    if-nez v26, :cond_2

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notiCustomColor()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiColor()I

    move-result v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02026d

    move/from16 v0, v28

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 585
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v22

    .line 587
    .local v22, showNav:Z
    if-eqz v22, :cond_3

    .line 588
    const v26, 0x7f04000c

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v22           #showNav:Z
    :cond_3
    :goto_2
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090064

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090065

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090063

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090062

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f09005d

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f09013b

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockCenter:Landroid/view/View;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f09006b

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090075

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090077

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09007a

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090079

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09007d

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f090032

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingDivider:Landroid/view/View;

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f090083

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSetting:Landroid/view/View;

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f090082

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonDivider:Landroid/view/View;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f09007f

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setShowDividers(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const v27, 0x7f0e0066

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setDividerPadding(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const v27, 0x7f02008c

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setShowDividers(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const v27, 0x7f0e0066

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setDividerPadding(I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const v27, 0x7f02008c

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090076

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090078

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09007b

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_aosp_clear"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_4

    const v27, 0x7f090138

    goto :goto_3

    :cond_4
    const v27, 0x7f09007c

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setAlpha(F)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setEnabled(Z)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090011

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090088

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/policy/DateView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 662
    const v26, 0x7f0b0009

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    .line 663
    const v26, 0x7f0b000a

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f090087

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setEnabled(Z)V

    .line 672
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090083

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090084

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090031

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonTablet:Landroid/widget/ImageView;

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09002e

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonTablet:Landroid/widget/ImageView;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090080

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1e

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->hasFullWidthNotifications()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const v27, 0x7f02002c

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090081

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 743
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090072

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ScrollView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    .line 745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 746
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1f

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 748
    .local v14, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    .end local v14           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 762
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelIsFullScreenWidth:Z

    move/from16 v26, v0

    if-nez v26, :cond_20

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    const/high16 v27, 0x8a

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ScrollView;->setSystemUiVisibility(I)V

    .line 776
    :cond_e
    :goto_6
    new-instance v26, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v6, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f09006d

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 779
    .local v24, tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 781
    const/high16 v26, 0x7f0e

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 787
    new-instance v26, Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 788
    new-instance v26, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v28, 0x7f090069

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBaseAlpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090068

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "display_battery_percentage"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "display_battery_percentage"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_21

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateBatteryColor()I

    move-result v26

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v26, 0x0

    :goto_7
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_acc_battery"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "battery_text_color"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "battcolorchange"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_hide_battery"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "statusbar_hide_battery"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b

    const/16 v26, 0x8

    :goto_8
    move/from16 v1, v26

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "kids_mode_enabled"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 806
    new-instance v26, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "notification_panel_brightness_adjustment"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    const/16 v26, 0x1

    :goto_9
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "notification_panel_brightness_adjustment"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 815
    new-instance v26, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 817
    new-instance v26, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 818
    new-instance v26, Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090067

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 825
    .local v23, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v11

    .line 829
    .local v11, isAPhone:Z
    if-eqz v11, :cond_f

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09006f

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyLabelView(Landroid/widget/TextView;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09000f

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_23

    const/16 v26, 0x1

    :goto_a
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 850
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v26

    if-eqz v26, :cond_24

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 877
    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_carrier_color"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_custom_carrier"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_carrier_text"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_data_icon"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_att_carrier"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetContObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMNetContObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    .line 880
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090071

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 883
    .local v21, settings_stub:Landroid/view/View;
    if-eqz v21, :cond_12

    move-object/from16 v26, v21

    .line 884
    check-cast v26, Landroid/view/ViewStub;

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090018

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 889
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 894
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090017

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/HorizontalScrollView;->setHoverScrollMode(Z)V

    .line 930
    :cond_13
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelIsFullScreenWidth:Z

    move/from16 v26, v0

    if-nez v26, :cond_14

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v26, v0

    const/high16 v27, 0x18

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setSystemUiVisibility(I)V

    .line 961
    .end local v21           #settings_stub:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelSetting:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_27

    const/16 v26, 0x1

    :goto_d
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInSettingPanel:Z

    .line 962
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInSettingPanel:Z

    move/from16 v26, v0

    if-eqz v26, :cond_15

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v26

    if-eqz v26, :cond_28

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelSetting:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 975
    :cond_15
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    const-string v27, "shown_quick_settings_help"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_29

    const/16 v26, 0x1

    :goto_f
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClingShown:Z

    .line 979
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClingShown:Z

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f09005f

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addATTMobileLabelView(Landroid/widget/TextView;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/IconMerger;->setAttCarrierLabel(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 998
    sget-boolean v26, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v26, :cond_17

    .line 999
    const v26, 0x7f0e0017

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1000
    .local v15, outerBounds:I
    const v26, 0x7f0e001c

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1001
    .local v10, imageBounds:I
    int-to-float v0, v10

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    div-float v18, v26, v27

    .line 1002
    .local v18, scale:F
    const v26, 0x7f0e001d

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 1005
    .local v4, alpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090060

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->operatorLogoIcon:Landroid/view/View;

    .line 1007
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataTypeBrand:Ljava/lang/String;

    .line 1008
    sget-object v26, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataTypeBrand:Ljava/lang/String;

    const-string v27, "ORANGE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    const v27, 0x7f090061

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->operatorLogoIcon:Landroid/view/View;

    .line 1014
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->operatorLogoIcon:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->operatorLogoIcon:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOperatorLogoIndicator(Landroid/view/View;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->operatorLogoIcon:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addOperatorLogoIconView(Landroid/view/View;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMoreIconView(Landroid/view/View;)V

    .line 1028
    .end local v4           #alpha:F
    .end local v10           #imageBounds:I
    .end local v15           #outerBounds:I
    .end local v18           #scale:F
    :cond_17
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1029
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v26, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    const-string v26, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1031
    const-string v26, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1032
    const-string v26, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    const-string v26, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    const-string v26, "com.sec.android.enterprisenotificationcenter.ENTERPRISE_MODE_CHANGE"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1035
    const-string v26, "com.android.systemui.statusbar.COLLAPSED"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    const-string v26, "com.samsung.android.intent.action.SECRET_MODE_ON"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    const-string v26, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v26, "com.samsung.cover.OPEN"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1041
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1044
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1046
    .local v16, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const v27, 0x7f02008d

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const v27, 0x7f02019e

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1056
    new-instance v27, Lcom/android/systemui/statusbar/policy/BrightnessController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v29, 0x7f090036

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f090073

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 1062
    .local v19, scrollCart:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f0900b3

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSlider:Landroid/widget/RelativeLayout;

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x10e0025

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    if-nez v26, :cond_2a

    const/16 v26, 0x1

    :goto_10
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsDisplaySearchPanel:Z

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const-string v27, "com.sec.feature.minimode_tray"

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayEnabled:Z

    .line 1077
    sget-boolean v26, Lcom/android/systemui/statusbar/Feature;->mSupportLongLifeMode:Z

    if-eqz v26, :cond_18

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "longlife_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongLifeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongLifeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->onChange(Z)V

    .line 1084
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_aosp_clear"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_toggle_type"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_hide_latest"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_hide_nonoti"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_hide_ongoin"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "notification_color_custom"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "notification_background_color"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_color_custom"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "statusbar_background_color"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTSMObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNetContSettings()V

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTSMSettings()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v26, v0

    return-object v26

    .line 555
    .end local v8           #filter:Landroid/content/IntentFilter;
    .end local v11           #isAPhone:Z
    .end local v16           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #scrollCart:Landroid/widget/LinearLayout;
    .end local v23           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v24           #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_19
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 704
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09007f

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 706
    .local v5, buttonHolder:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09002d

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 708
    .local v20, settingHolder:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f090070

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 711
    .local v13, mNotificationPanelHeaderDivier:Landroid/view/View;
    if-eqz v5, :cond_1b

    .line 712
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 715
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonDivider:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonDivider:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :cond_1c
    if-eqz v20, :cond_1d

    .line 719
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 720
    .local v12, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 721
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    .end local v12           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d
    if-eqz v13, :cond_a

    .line 724
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 730
    .end local v5           #buttonHolder:Landroid/view/View;
    .end local v13           #mNotificationPanelHeaderDivier:Landroid/view/View;
    .end local v20           #settingHolder:Landroid/view/View;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const v27, 0x7f020025

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 752
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0e0044

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0e004c

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v25, v26, v27

    .line 754
    .local v25, topMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 755
    .restart local v14       #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 770
    .end local v14           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v25           #topMargin:I
    :cond_20
    sget-boolean v26, Lcom/android/systemui/statusbar/Feature;->mPanelExpandedTickerStop:Z

    if-eqz v26, :cond_e

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    const/high16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ScrollView;->setSystemUiVisibility(I)V

    goto/16 :goto_6

    .line 797
    .restart local v24       #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_21
    const/16 v26, 0x8

    goto/16 :goto_7

    .line 807
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 848
    .restart local v11       #isAPhone:Z
    .restart local v23       #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_a

    .line 858
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_b

    .line 903
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f0900bf

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 904
    .restart local v21       #settings_stub:Landroid/view/View;
    if-eqz v21, :cond_26

    move-object/from16 v26, v21

    .line 905
    check-cast v26, Landroid/view/ViewStub;

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    .line 910
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f09000f

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelSetting:Landroid/widget/TextView;

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v26, v0

    const v27, 0x7f090011

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    new-instance v27, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 924
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v26

    if-nez v26, :cond_13

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const/high16 v29, 0x7f0a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    invoke-direct/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 907
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v26, v0

    const v27, 0x7f09002c

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    goto :goto_11

    .line 961
    .end local v21           #settings_stub:Landroid/view/View;
    :cond_27
    const/16 v26, 0x0

    goto/16 :goto_d

    .line 970
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelSetting:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_e

    .line 975
    :cond_29
    const/16 v26, 0x0

    goto/16 :goto_f

    .line 1069
    .restart local v8       #filter:Landroid/content/IntentFilter;
    .restart local v16       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v19       #scrollCart:Landroid/widget/LinearLayout;
    :cond_2a
    const/16 v26, 0x0

    goto/16 :goto_10

    :cond_2b
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateBatteryImage()V

    const/16 v26, 0x0

    goto/16 :goto_8

    .line 594
    .end local v8           #filter:Landroid/content/IntentFilter;
    .end local v11           #isAPhone:Z
    .end local v16           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #scrollCart:Landroid/widget/LinearLayout;
    .end local v23           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v24           #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :catch_0
    move-exception v26

    goto/16 :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 1575
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 1576
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    .line 1577
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1581
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1584
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHasNarrowNotificationConcept:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationPanelMargins()V

    goto :goto_0

    .line 1577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4101
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mouse_hovering"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mouse_hovering_magnetic_ui"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 4103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4105
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 4131
    .end local v0           #action:I
    :cond_0
    :goto_0
    return v9

    .line 4107
    .restart local v0       #action:I
    :pswitch_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 4108
    .local v5, r:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 4109
    .local v3, posX:I
    const/4 v4, 0x0

    .line 4111
    .local v4, posY:I
    invoke-virtual {p1, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4113
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 4114
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4116
    const-string v6, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_HOVER_ENTER  posX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " posY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " height : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4119
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.spc.eventcontrol"

    const-string v7, "com.sec.android.spc.eventcontrol.SpcEventControlReceiver"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4121
    const-string v6, "com.sec.android.spc.eventcontrol.ACTION_SET_MOUSE_POS"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4122
    const-string v6, "event"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4123
    const-string v6, "x"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4124
    const-string v6, "y"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4126
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 4105
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 3825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3826
    return-void
.end method

.method public refreshAllStatusBarIcons()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1377
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 3
    .parameter "layoutDirection"

    .prologue
    const/4 v2, 0x0

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1610
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1616
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 1617
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1408
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 1487
    .local v2, old:Landroid/service/notification/StatusBarNotification;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotification key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    if-eqz v2, :cond_0

    .line 1496
    const/16 v3, -0x2710

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1510
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v3, :cond_1

    .line 1511
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1512
    const/4 v3, 0x1

    const/high16 v4, 0x10a

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 1517
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSweepedNotification:Z

    if-eqz v3, :cond_2

    .line 1518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1519
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    const-string v3, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    const-string v3, "NOTIFICATION_ID"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1523
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTIFICATION_PACKAGE_NAME = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NOTIFICATION_ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1526
    .local v1, intentForMessage:Landroid/content/Intent;
    const-string v3, "com.android.sms.action.SWEEP_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    const-string v3, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1530
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSweepedNotification:Z

    .line 1540
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intentForMessage:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method removePlmnString()V
    .locals 3

    .prologue
    .line 3669
    const-string v1, "STATUSBAR-PhoneStatusBar"

    const-string v2, "removePlmnString"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3671
    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 3672
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 3673
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3674
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 3678
    .end local v0           #count:I
    :cond_0
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1864
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v6

    if-lez v6, :cond_2

    move v0, v4

    .line 1866
    .local v0, any:Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 1873
    .local v1, clearable:Z
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v1, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1874
    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    move v6, v5

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1875
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1876
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    move v6, v4

    :goto_4
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1878
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f09005c

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1879
    .local v2, nlo:Landroid/view/View;
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v6

    if-nez v6, :cond_7

    move v3, v4

    .line 1880
    .local v3, showDot:Z
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    :goto_6
    if-eq v3, v4, :cond_1

    .line 1881
    if-eqz v3, :cond_0

    .line 1882
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1883
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v3, :cond_9

    :goto_7
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz v3, :cond_a

    const-wide/16 v4, 0x2ee

    :goto_8
    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x4000

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz v3, :cond_b

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1899
    :cond_1
    return-void

    .end local v0           #any:Z
    .end local v1           #clearable:Z
    .end local v2           #nlo:Landroid/view/View;
    .end local v3           #showDot:Z
    :cond_2
    move v0, v5

    .line 1864
    goto :goto_0

    .restart local v0       #any:Z
    :cond_3
    move v1, v5

    .line 1866
    goto :goto_1

    .restart local v1       #clearable:Z
    :cond_4
    move v6, v8

    .line 1873
    goto :goto_2

    .line 1874
    :cond_5
    const/4 v6, 0x4

    goto :goto_3

    :cond_6
    move v6, v5

    .line 1876
    goto :goto_4

    .restart local v2       #nlo:Landroid/view/View;
    :cond_7
    move v3, v5

    .line 1879
    goto :goto_5

    .restart local v3       #showDot:Z
    :cond_8
    move v4, v5

    .line 1880
    goto :goto_6

    :cond_9
    move v7, v8

    .line 1885
    goto :goto_7

    :cond_a
    const-wide/16 v4, 0xfa

    goto :goto_8

    :cond_b
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_9
.end method

.method setCarrierLabelVisibility(ZI)V
    .locals 3
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 3230
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrierLabelVibibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3233
    return-void

    .line 3231
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 0
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 2991
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 5
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2981
    const/4 v3, 0x2

    if-eq p3, v3, :cond_0

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 2984
    .local v0, altBack:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    or-int/lit8 v3, v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/CommandQueue;->setNavigationIconHints(I)V

    .line 2987
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-lez p2, :cond_4

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setImeWindowStatus(Z)V

    .line 2988
    :cond_1
    return-void

    .end local v0           #altBack:Z
    :cond_2
    move v0, v1

    .line 2981
    goto :goto_0

    .line 2984
    .restart local v0       #altBack:Z
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    and-int/lit8 v3, v3, -0x9

    goto :goto_1

    :cond_4
    move v2, v1

    .line 2987
    goto :goto_2
.end method

.method public setLightsOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x1

    .line 2952
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    if-eqz p1, :cond_0

    .line 2954
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 2958
    :goto_0
    return-void

    .line 2956
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setMinHeightWhenDone(Landroid/animation/Animator;Landroid/view/View;)Landroid/animation/Animator;
    .locals 2
    .parameter "a"
    .parameter "v"

    .prologue
    .line 2332
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "setMinHeightWhenDone"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2340
    return-object p1
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .parameter "hints"

    .prologue
    .line 2865
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_1

    .line 2872
    :cond_0
    :goto_0
    return-void

    .line 2867
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 2869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    goto :goto_0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 3237
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v0

    .line 3238
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 3239
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 3240
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 3241
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3243
    :cond_0
    return-void

    .line 3238
    .end local v1           #v:I
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 6
    .parameter "vis"
    .parameter "mask"

    .prologue
    .line 2876
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 2877
    .local v3, oldVal:I
    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v4, v3

    and-int v5, p1, p2

    or-int v2, v4, v5

    .line 2878
    .local v2, newVal:I
    xor-int v0, v2, v3

    .line 2880
    .local v0, diff:I
    if-eqz v0, :cond_3

    .line 2881
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 2883
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2

    .line 2884
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 2885
    .local v1, lightsOut:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2886
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2887
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_0

    .line 2888
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 2892
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_1

    .line 2893
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(Z)V

    .line 2896
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarLowProfile(Z)V

    .line 2899
    .end local v1           #lightsOut:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged()V

    .line 2901
    :cond_3
    return-void

    .line 2884
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .parameter "a"
    .parameter "v"
    .parameter "vis"

    .prologue
    .line 2319
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2325
    return-object p1
.end method

.method public setVisibilityWhenDone(Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "a"
    .parameter "v"
    .parameter "vis"

    .prologue
    .line 2307
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2314
    return-object p1
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 3859
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsDisplaySearchPanel:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCallOnGoingView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3903
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3904
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    .line 3905
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3907
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3908
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3910
    .local v0, vglp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3912
    .end local v0           #vglp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public showCling()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2781
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2782
    .local v0, stub:Landroid/view/ViewStub;
    if-nez v0, :cond_0

    .line 2783
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClingShown:Z

    .line 2822
    :goto_0
    return-void

    .line 2787
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSuppressStatusBarDrags:Z

    .line 2789
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewStub;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v5, 0x0

    .line 1908
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1910
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "statusbar_clock_style"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const-string v4, "statusbar_clock_position"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f09013c

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1911
    .local v0, clock:Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1912
    .local v0, clock:Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f09013b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1913
    .local v0, clock:Landroid/view/View;
    if-eqz v0, :cond_0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockVisibility:Z

    .line 1914
    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowClockByClearCover:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public showClockByClearCover(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1903
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowClockByClearCover:Z

    .line 1904
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockVisibility:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 1905
    return-void
.end method

.method showPlmnString()V
    .locals 4

    .prologue
    .line 3652
    const-string v1, "STATUSBAR-PhoneStatusBar"

    const-string v2, "showPlmnString"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverOpen:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x10a

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3654
    const/4 v1, 0x1

    const/high16 v2, 0x10a

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 3656
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 3657
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3658
    .local v0, mPlmnHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3666
    .end local v0           #mPlmnHandler:Landroid/os/Handler;
    :cond_3
    :goto_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1204
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1205
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1210
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1212
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    return-void
.end method

.method public start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "a"

    .prologue
    .line 2356
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 2357
    return-object p1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 499
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 502
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 509
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 510
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 3
    .parameter "intent"
    .parameter "onlyProvisioned"

    .prologue
    .line 3404
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3413
    :goto_0
    return-void

    .line 3407
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3410
    :goto_1
    const/high16 v0, 0x1400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 3408
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .parameter "d"
    .parameter "a"

    .prologue
    .line 2351
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2352
    return-object p2
.end method

.method public switchToSettings()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 2501
    const-string v0, "STATUSBAR-PhoneStatusBar"

    const-string v1, "switchToSettings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    if-eqz v0, :cond_0

    .line 2524
    :goto_0
    return-void

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiToggs(Z)V

    .line 2509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_2

    .line 2514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 2515
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2520
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 2518
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScaleX(F)V

    goto :goto_1
.end method

.method protected tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 2
    .parameter "key"
    .parameter "n"
    .parameter "firstTime"

    .prologue
    .line 2996
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3014
    :cond_0
    :goto_0
    return-void

    .line 2999
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3002
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3008
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3009
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method public toggleNotificationPanel()V
    .locals 2

    .prologue
    .line 3931
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    .line 3932
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3933
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3934
    return-void

    .line 3931
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .parameter "showMenu"

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 2976
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 2977
    :cond_1
    return-void
.end method

.method public transparentizeStatusBar(I)V
    .locals 2
    .parameter "transparent"

    .prologue
    .line 3921
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sbarCustomColor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z

    .line 3922
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z

    if-nez v0, :cond_1

    .line 3923
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_3

    const v0, 0x7f020267

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3926
    :cond_1
    :goto_2
    return-void

    .line 3921
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3923
    :cond_3
    const v0, 0x7f020259

    goto :goto_1
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1814
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-nez v3, :cond_1

    .line 1860
    :cond_0
    :goto_0
    return-void

    .line 1823
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    move v0, v1

    .line 1826
    .local v0, emergencyCallsShownElsewhere:Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationHeaderHeight:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 1835
    .local v1, makeVisible:Z
    :goto_2
    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    if-eq v3, v1, :cond_0

    .line 1836
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 1840
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1841
    if-eqz v1, :cond_4

    .line 1842
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1844
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_7

    const/high16 v2, 0x3f80

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .end local v0           #emergencyCallsShownElsewhere:Z
    .end local v1           #makeVisible:Z
    :cond_5
    move v0, v2

    .line 1823
    goto :goto_1

    .restart local v0       #emergencyCallsShownElsewhere:Z
    :cond_6
    move v1, v2

    .line 1826
    goto :goto_2

    .line 1844
    .restart local v1       #makeVisible:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_4
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3288
    return-void
.end method

.method updateExpandedInvisiblePosition()V
    .locals 1

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 3247
    return-void
.end method

.method public updateExpandedViewPos(I)V
    .locals 4
    .parameter "thingy"

    .prologue
    .line 3263
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMinimumHeight(I)V

    .line 3266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3267
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3268
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginPx:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 3269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3271
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    if-eqz v1, :cond_0

    .line 3272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3273
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3274
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginPx:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 3275
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3279
    :cond_0
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1402
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1403
    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 13

    .prologue
    .line 1768
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v11, :cond_1

    .line 1811
    :cond_0
    return-void

    .line 1770
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V

    .line 1772
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    invoke-direct {v5, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1775
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1781
    .local v0, N:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v9, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v6

    .line 1785
    .local v6, provisioned:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 1786
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v12, v0, v3

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 1787
    .local v2, ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v6, :cond_2

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, -0xa

    if-ge v11, v12, :cond_4

    :cond_2
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1785
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1789
    :cond_4
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1790
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1793
    .end local v2           #ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    .local v8, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    :goto_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_7

    .line 1795
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1796
    .local v1, child:Landroid/view/View;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1797
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1801
    .end local v1           #child:Landroid/view/View;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1802
    .local v7, remove:Landroid/view/View;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11, v7}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 1805
    .end local v7           #remove:Landroid/view/View;
    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 1806
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1807
    .local v10, v:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_9

    .line 1808
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11, v10, v3, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1805
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method protected updateNotificationPanelMargins()V
    .locals 6

    .prologue
    .line 1543
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1544
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0e0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationSideMargins:I

    .line 1545
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationSideMargins:I

    const v5, 0x7f0e005a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 1547
    .local v0, clearBtnMargin:F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationSideMargins:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyNotificationMargins(Landroid/view/View;F)V

    .line 1548
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationSideMargins:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyNotificationMargins(Landroid/view/View;F)V

    .line 1549
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationSideMargins:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyNotificationMargins(Landroid/view/View;F)V

    .line 1550
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyNotificationMargins(Landroid/view/View;F)V

    .line 1551
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSlider:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationSideMargins:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyNotificationMargins(Landroid/view/View;F)V

    .line 1553
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1554
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v2, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1555
    .local v2, noti_view:Landroid/view/View;
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationSideMargins:I

    int-to-float v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyNotificationMargins(Landroid/view/View;F)V

    .line 1553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1557
    .end local v2           #noti_view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method updateResources()V
    .locals 1

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 3737
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTextResources()V

    .line 3738
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 3739
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1197
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelView;->setStatusBarView(Landroid/view/View;)V

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1200
    return-void
.end method

.method protected updateTextResources()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3742
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3744
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3745
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3746
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3747
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3748
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3749
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3751
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3752
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 3753
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3754
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x7f0c0096

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3755
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v2, 0x7f0c008c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3756
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const v2, 0x7f0c008b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3757
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const v2, 0x7f0c0102

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3758
    return-void
.end method

.method public userSwitched(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    .line 3684
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 3686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 3689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetBrightnessEnableObserver()V

    .line 3690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetBatteryPercentageObserver()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetTSMObserver()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetTSMNetContObserver()V

    .line 3692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->userSwitched()V

    .line 3694
    :cond_0
    return-void
.end method

.method vibrate()V
    .locals 3

    .prologue
    .line 3829
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 3831
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3832
    return-void
.end method
