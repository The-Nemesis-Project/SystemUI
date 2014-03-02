.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.super Landroid/widget/FrameLayout;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;
    }
.end annotation


# static fields
.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"

.field private static final DB_NUMBER_OF_APPS:Ljava/lang/String; = "notification_panel_active_number_of_apps"


# instance fields
.field final TW_TAG:Ljava/lang/String;

.field isExist:[Z

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCnt:I

.field private mButtonNumLandscape:I

.field private mButtonNumPortrait:I

.field private mCellGap:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurButtonHeight:I

.field private mCurButtonNum:I

.field mDefaultDisplay:Landroid/view/Display;

.field private mDisplayButtonCnt:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

.field private mFullWidthNotifications:Z

.field private mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

.field public mPosition:I

.field mQBtnLocaleChange:[Ljava/lang/reflect/Method;

.field mQBtnSizeChange:[Ljava/lang/reflect/Method;

.field mQBtnUserSwitched:[Ljava/lang/reflect/Method;

.field mQuickSettingButton:[Landroid/view/View;

.field private mSingleLine:Z

.field private mVisibleButtonNum:I

.field private mWM:Landroid/view/IWindowManager;

.field mlp:[Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const-string v0, "STATUSBAR-QuickSettingPanel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->TW_TAG:Ljava/lang/String;

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 70
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 91
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    .line 376
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 117
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "statusbar_toggletext_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "statusbar_toggle_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toggle_custom_textcolor"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toggle_custom_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "custom_toggle_number"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "statusbar_panel_number"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 128
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mWM:Landroid/view/IWindowManager;

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 131
    return-void
.end method

.method private LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 305
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object v0, p1

    .line 309
    .local v0, active_app_list:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, quickPanelActiveList:[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 313
    .local v2, main_list:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 314
    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "main list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "quickPanelActiveList.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    return v0
.end method

.method private checkPanelLimit()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_panel_number"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private makeArrayQuickSettingButtonToOneString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 260
    aget-object v2, p1, v0

    const-string v3, "not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeDividerVisible(II)V
    .locals 5
    .parameter "i"
    .parameter "j"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 716
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v3, v3, p1

    const v4, 0x7f090106

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 717
    .local v0, divider:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 718
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    if-eqz v3, :cond_2

    .line 719
    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 724
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 719
    goto :goto_0

    .line 721
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v3, p2, v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private refreshView()V
    .locals 18

    .prologue
    .line 587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v13, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 588
    sget-boolean v13, Lcom/android/systemui/statusbar/Feature;->mUpdateDisplayWidthWithoutNavigationBar:Z

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 591
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v13}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v13

    if-nez v13, :cond_0

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v13, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_d

    .line 597
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .line 602
    .local v11, j:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->removeAllViewsInLayout()V

    .line 605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "notification_panel_active_app_list"

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "notification_panel_active_app_list"

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, QBtnAttr:[Ljava/lang/String;
    :goto_1
    array-length v13, v1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 614
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 615
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v13, v13, [Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:[Landroid/widget/FrameLayout$LayoutParams;

    .line 616
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v2, v13, [Ljava/lang/Class;

    .line 617
    .local v2, QBtnClass:[Ljava/lang/Class;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v13, v13, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    .line 618
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v3, v13, [Ljava/lang/reflect/Constructor;

    .line 619
    .local v3, QBtnConstructor:[Ljava/lang/reflect/Constructor;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v13, v13, [Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    .line 620
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v13, v13, [Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    .line 621
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    .line 622
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 625
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v13, v13, [Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnUserSwitched:[Ljava/lang/reflect/Method;

    .line 628
    const/4 v7, 0x0

    .line 629
    .local v7, correctionWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "custom_toggle_number"

    const/16 v15, 0x14

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-ge v15, v13, :cond_1

    move v13, v15

    :cond_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 632
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mFullWidthNotifications:Z

    if-eqz v13, :cond_4

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 641
    :goto_2
    const/4 v6, 0x0

    .line 642
    .local v6, correctionLeftMargin:I
    move v4, v7

    .line 645
    .local v4, correctionCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v10, v13, :cond_6

    .line 647
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "com.android.systemui.statusbar.policy.quicksetting."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v1, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "QuickSettingButton"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v2, v10

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v10
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v13, v13, v10

    if-eqz v13, :cond_2

    .line 657
    :try_start_2
    aget-object v13, v2, v10

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/content/Context;

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    aput-object v13, v3, v10

    .line 658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v13, v3, v10

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    aput-object v13, v14, v10

    .line 659
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v13, v13, v10

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 662
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 664
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 665
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v13

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    .line 668
    add-int/lit8 v5, v4, -0x1

    .end local v4           #correctionCount:I
    .local v5, correctionCount:I
    if-lez v4, :cond_5

    .line 669
    :try_start_3
    iget v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 673
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v13, v11, v13

    iget v14, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v14, v15

    mul-int/2addr v13, v14

    add-int/2addr v13, v6

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 676
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v14, v15

    mul-int/2addr v13, v14

    iput v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v13, v13, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    add-int/lit8 v11, v11, 0x1

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v14, v2, v10

    const-string v15, "localeChanged"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    aput-object v14, v13, v10

    .line 682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v14, v2, v10

    const-string v15, "checkTextLength"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    aput-object v14, v13, v10

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnUserSwitched:[Ljava/lang/reflect/Method;

    aget-object v14, v2, v10

    const-string v15, "userSwitched"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    aput-object v14, v13, v10
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_7

    move v4, v5

    .line 645
    .end local v5           #correctionCount:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #correctionCount:I
    :cond_2
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 608
    .end local v1           #QBtnAttr:[Ljava/lang/String;
    .end local v2           #QBtnClass:[Ljava/lang/Class;
    .end local v3           #QBtnConstructor:[Ljava/lang/reflect/Constructor;
    .end local v4           #correctionCount:I
    .end local v6           #correctionLeftMargin:I
    .end local v7           #correctionWidth:I
    .end local v10           #i:I
    :cond_3
    const-string v13, ";"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #QBtnAttr:[Ljava/lang/String;
    goto/16 :goto_1

    .line 636
    .restart local v2       #QBtnClass:[Ljava/lang/Class;
    .restart local v3       #QBtnConstructor:[Ljava/lang/reflect/Constructor;
    .restart local v7       #correctionWidth:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e007f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto/16 :goto_2

    .line 650
    .restart local v4       #correctionCount:I
    .restart local v6       #correctionLeftMargin:I
    .restart local v10       #i:I
    :catch_0
    move-exception v9

    .line 651
    .local v9, e1:Ljava/lang/ClassNotFoundException;
    const-string v13, "STATUSBAR-QuickSettingPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ClassNotFoundException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    const/4 v14, 0x0

    aput-boolean v14, v13, v10

    goto/16 :goto_4

    .line 671
    .end local v4           #correctionCount:I
    .end local v9           #e1:Ljava/lang/ClassNotFoundException;
    .restart local v5       #correctionCount:I
    .restart local v12       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    move v6, v7

    goto/16 :goto_5

    .line 687
    .end local v5           #correctionCount:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #correctionCount:I
    :catch_1
    move-exception v8

    .line 688
    .local v8, e:Ljava/lang/NoSuchMethodException;
    :goto_7
    const-string v13, "STATUSBAR-QuickSettingPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "NoSuchMethodException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 689
    .end local v8           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v8

    .line 690
    .local v8, e:Ljava/lang/SecurityException;
    :goto_8
    const-string v13, "STATUSBAR-QuickSettingPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SecurityException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 691
    .end local v8           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v8

    .line 692
    .local v8, e:Ljava/lang/InstantiationException;
    :goto_9
    const-string v13, "STATUSBAR-QuickSettingPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "InstantiationException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 693
    .end local v8           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v8

    .line 694
    .local v8, e:Ljava/lang/IllegalAccessException;
    :goto_a
    const-string v13, "STATUSBAR-QuickSettingPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "IllegalAccessException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 695
    .end local v8           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v8

    .line 696
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :goto_b
    const-string v13, "STATUSBAR-QuickSettingPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "IllegalArgumentException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 697
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v8

    .line 698
    .local v8, e:Ljava/lang/reflect/InvocationTargetException;
    :goto_c
    const-string v13, "STATUSBAR-QuickSettingPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "InvocationTargetException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 702
    .end local v8           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_6
    return-void

    .line 697
    .end local v4           #correctionCount:I
    .restart local v5       #correctionCount:I
    .restart local v12       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :catch_7
    move-exception v8

    move v4, v5

    .end local v5           #correctionCount:I
    .restart local v4       #correctionCount:I
    goto :goto_c

    .line 695
    .end local v4           #correctionCount:I
    .restart local v5       #correctionCount:I
    :catch_8
    move-exception v8

    move v4, v5

    .end local v5           #correctionCount:I
    .restart local v4       #correctionCount:I
    goto :goto_b

    .line 693
    .end local v4           #correctionCount:I
    .restart local v5       #correctionCount:I
    :catch_9
    move-exception v8

    move v4, v5

    .end local v5           #correctionCount:I
    .restart local v4       #correctionCount:I
    goto :goto_a

    .line 691
    .end local v4           #correctionCount:I
    .restart local v5       #correctionCount:I
    :catch_a
    move-exception v8

    move v4, v5

    .end local v5           #correctionCount:I
    .restart local v4       #correctionCount:I
    goto :goto_9

    .line 689
    .end local v4           #correctionCount:I
    .restart local v5       #correctionCount:I
    :catch_b
    move-exception v8

    move v4, v5

    .end local v5           #correctionCount:I
    .restart local v4       #correctionCount:I
    goto/16 :goto_8

    .line 687
    .end local v4           #correctionCount:I
    .restart local v5       #correctionCount:I
    :catch_c
    move-exception v8

    move v4, v5

    .end local v5           #correctionCount:I
    .restart local v4       #correctionCount:I
    goto/16 :goto_7

    .line 594
    .end local v1           #QBtnAttr:[Ljava/lang/String;
    .end local v2           #QBtnClass:[Ljava/lang/Class;
    .end local v3           #QBtnConstructor:[Ljava/lang/reflect/Constructor;
    .end local v4           #correctionCount:I
    .end local v6           #correctionLeftMargin:I
    .end local v7           #correctionWidth:I
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :catch_d
    move-exception v13

    goto/16 :goto_0
.end method

.method private resetEditObserver()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;->onChange(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toggle_custom_textcolor"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toggle_custom_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_toggle_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_toggletext_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->onChange(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_toggle_number"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 758
    return-void
.end method

.method private setViewWidth()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 324
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 325
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUpdateDisplayWidthWithoutNavigationBar:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 328
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v6}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mFullWidthNotifications:Z

    if-eqz v6, :cond_2

    .line 337
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 343
    .local v0, displayWidth:I
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 346
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_3

    move v3, v4

    .line 347
    .local v3, isPortraitDisplay:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_4

    move v2, v4

    .line 350
    .local v2, isPortraitConfiguration:Z
    :goto_3
    if-eq v3, v2, :cond_1

    .line 351
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PD:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz v3, :cond_5

    .line 353
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    if-eq v4, v5, :cond_1

    .line 354
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 370
    :cond_1
    :goto_4
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v1, v4, v5

    .line 372
    .local v1, iconWidth:I
    return v1

    .line 339
    .end local v0           #displayWidth:I
    .end local v1           #iconWidth:I
    .end local v2           #isPortraitConfiguration:Z
    .end local v3           #isPortraitDisplay:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .restart local v0       #displayWidth:I
    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 346
    goto/16 :goto_2

    .restart local v3       #isPortraitDisplay:Z
    :cond_4
    move v2, v5

    .line 347
    goto :goto_3

    .line 358
    .restart local v2       #isPortraitConfiguration:Z
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    if-eq v4, v5, :cond_1

    .line 359
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    goto :goto_4

    .line 331
    .end local v0           #displayWidth:I
    .end local v2           #isPortraitConfiguration:Z
    .end local v3           #isPortraitDisplay:Z
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private update()V
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/4 v4, 0x1

    .line 137
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    .local v2, r:Landroid/content/res/Resources;
    const v5, 0x7f0e004c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    .line 139
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "custom_toggle_number"

    const/16 v7, 0x14

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const v5, 0x7f0d0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ge v6, v5, :cond_0

    move v5, v6

    :cond_0
    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 140
    const v5, 0x7f0e0044

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:I

    .line 143
    :try_start_0
    const-string v5, "STATUSBAR-QuickSettingPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update() : DB_NUMBER_OF_APPS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "custom_toggle_number"

    const/16 v9, 0x14

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "custom_toggle_number"

    const/16 v7, 0x14

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_1

    .line 146
    const/16 v5, 0x14

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    const/4 v3, 0x0

    .line 158
    .local v3, settingsPanelDragzoneFrac:F
    const v5, 0x7f0e003b

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getFraction(III)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 162
    :goto_1
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_2

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mFullWidthNotifications:Z

    .line 164
    return-void

    .line 148
    .end local v3           #settingsPanelDragzoneFrac:F
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "custom_toggle_number"

    const/16 v7, 0x14

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "STATUSBAR-QuickSettingPanel"

    const-string v6, " SettingNotFoundException : number_of_apps = 20"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I

    goto :goto_0

    .line 159
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3       #settingsPanelDragzoneFrac:F
    :catch_1
    move-exception v1

    .line 160
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    goto :goto_1

    .line 162
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_b

    .line 176
    aget-object v1, p1, v0

    const-string v2, "MobileData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-nez v1, :cond_0

    .line 177
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 181
    :cond_0
    aget-object v1, p1, v0

    const-string v2, "AllShareCast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :cond_1
    aget-object v1, p1, v0

    const-string v2, "DormantMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    :cond_2
    aget-object v1, p1, v0

    const-string v2, "MultiWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 200
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 205
    :cond_3
    aget-object v1, p1, v0

    const-string v2, "WiFiHotspot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    :cond_4
    aget-object v1, p1, v0

    const-string v2, "SmartStay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    :cond_5
    aget-object v1, p1, v0

    const-string v2, "SmartScroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    :cond_6
    aget-object v1, p1, v0

    const-string v2, "SmartPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    :cond_7
    aget-object v1, p1, v0

    const-string v2, "Nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 240
    :cond_8
    aget-object v1, p1, v0

    const-string v2, "SBeam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 247
    :cond_9
    aget-object v1, p1, v0

    const-string v2, "AirView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 175
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 254
    :cond_b
    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 14
    .parameter "newConfig"

    .prologue
    const v13, 0x7f0d0009

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v12, -0x2

    .line 413
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 414
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mUpdateDisplayWidthWithoutNavigationBar:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_0

    .line 417
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v9}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v9

    if-nez v9, :cond_0

    .line 418
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 426
    .local v0, buttonNumResource:I
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    if-nez v9, :cond_1

    .line 427
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "custom_toggle_number"

    const/16 v13, 0x14

    invoke-static {v9, v10, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const v13, 0x7f0d0009

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ge v10, v0, :cond_2

    move v0, v10

    .line 429
    :cond_2
    if-lez v0, :cond_3

    .line 430
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v9, v10, :cond_5

    move v6, v8

    .line 431
    .local v6, isPortraitDisplay:Z
    :goto_1
    if-eqz v6, :cond_6

    .line 432
    iget v9, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v8, :cond_3

    .line 433
    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    .line 444
    .end local v6           #isPortraitDisplay:Z
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .line 445
    .local v4, correctionWidth:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "custom_toggle_number"

    const/16 v10, 0x14

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-ge v9, v8, :cond_4

    move v8, v9

    :cond_4
    iput v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 448
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mFullWidthNotifications:Z

    if-eqz v8, :cond_7

    .line 449
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 457
    :goto_3
    const/4 v3, 0x0

    .line 458
    .local v3, correctionLeftMargin:I
    move v1, v4

    .line 461
    .local v1, correctionCount:I
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v8, :cond_9

    .line 462
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 463
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 465
    .local v7, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 468
    add-int/lit8 v2, v1, -0x1

    .end local v1           #correctionCount:I
    .local v2, correctionCount:I
    if-lez v1, :cond_8

    .line 469
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 473
    :goto_5
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v8, v5, v8

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v8, v3

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 476
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v8, v5, v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 477
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    add-int/lit8 v5, v5, 0x1

    move v1, v2

    .end local v2           #correctionCount:I
    .restart local v1       #correctionCount:I
    goto :goto_4

    .line 430
    .end local v1           #correctionCount:I
    .end local v3           #correctionLeftMargin:I
    .end local v4           #correctionWidth:I
    .end local v5           #i:I
    .end local v7           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 436
    .restart local v6       #isPortraitDisplay:Z
    :cond_6
    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_3

    .line 437
    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    goto/16 :goto_2

    .line 452
    .end local v6           #isPortraitDisplay:Z
    .restart local v4       #correctionWidth:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e007f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_3

    .line 471
    .restart local v2       #correctionCount:I
    .restart local v3       #correctionLeftMargin:I
    .restart local v5       #i:I
    .restart local v7       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    move v3, v4

    goto :goto_5

    .line 483
    .end local v2           #correctionCount:I
    .end local v5           #i:I
    .end local v7           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1       #correctionCount:I
    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 485
    return-void

    .line 420
    .end local v0           #buttonNumResource:I
    .end local v1           #correctionCount:I
    .end local v3           #correctionLeftMargin:I
    .end local v4           #correctionWidth:I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 706
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 707
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    .line 708
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 709
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 712
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 14
    .parameter "singleLine"

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x2

    .line 488
    const-string v8, "STATUSBAR-QuickSettingPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSingleLine:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 491
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mUpdateDisplayWidthWithoutNavigationBar:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 494
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v8}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v8

    if-nez v8, :cond_0

    .line 495
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    if-nez v8, :cond_2

    .line 584
    :cond_1
    return-void

    .line 502
    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-eqz v8, :cond_1

    .line 505
    const/4 v3, 0x0

    .line 506
    .local v3, correctionWidth:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "custom_toggle_number"

    const/16 v10, 0x14

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-ge v10, v8, :cond_3

    move v8, v10

    :cond_3
    iput v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 509
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mFullWidthNotifications:Z

    if-eqz v8, :cond_4

    .line 510
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 518
    :goto_1
    const/4 v2, 0x0

    .line 519
    .local v2, correctionLeftMargin:I
    move v0, v3

    .line 523
    .local v0, correctionCount:I
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    .line 524
    const/4 v5, 0x0

    .line 525
    .local v5, j:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v7

    .line 527
    .local v7, w:I
    if-eqz p1, :cond_7

    .line 528
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v4, v8, :cond_1

    .line 529
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v8, v8, v4

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I

    if-ge v4, v8, :cond_6

    .line 531
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 533
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 534
    .local v6, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 537
    add-int/lit8 v1, v0, -0x1

    .end local v0           #correctionCount:I
    .local v1, correctionCount:I
    if-lez v0, :cond_5

    .line 538
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 542
    :goto_3
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v8, v9

    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 545
    iput v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 546
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v8, v8, v4

    invoke-virtual {p0, v8, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    .line 528
    .end local v1           #correctionCount:I
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v0       #correctionCount:I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 513
    .end local v0           #correctionCount:I
    .end local v2           #correctionLeftMargin:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #w:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e007f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_1

    .line 540
    .restart local v1       #correctionCount:I
    .restart local v2       #correctionLeftMargin:I
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v6       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7       #w:I
    :cond_5
    move v2, v3

    goto :goto_3

    .line 550
    .end local v1           #correctionCount:I
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v0       #correctionCount:I
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v8, v8, v4

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 554
    .end local v4           #i:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v4, v8, :cond_1

    .line 555
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v8, v8, v4

    if-eqz v8, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->checkPanelLimit()Z

    move-result v8

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I

    if-ge v4, v8, :cond_9

    .line 557
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 559
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 560
    .restart local v6       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 563
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v8, v5, v8

    if-nez v8, :cond_b

    .line 564
    move v0, v3

    .line 565
    const/4 v2, 0x0

    move v1, v0

    .line 567
    .end local v0           #correctionCount:I
    .restart local v1       #correctionCount:I
    :goto_6
    add-int/lit8 v0, v1, -0x1

    .end local v1           #correctionCount:I
    .restart local v0       #correctionCount:I
    if-lez v1, :cond_a

    .line 568
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 572
    :goto_7
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v8, v5, v8

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v8, v2

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 575
    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v8, v5, v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 576
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v8, v8, v4

    invoke-virtual {p0, v8, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    add-int/lit8 v5, v5, 0x1

    .line 580
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v8, v8, v4

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 570
    .restart local v6       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    move v2, v3

    goto :goto_7

    .line 497
    .end local v0           #correctionCount:I
    .end local v2           #correctionLeftMargin:I
    .end local v3           #correctionWidth:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #w:I
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .restart local v0       #correctionCount:I
    .restart local v2       #correctionLeftMargin:I
    .restart local v3       #correctionWidth:I
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v6       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7       #w:I
    :cond_b
    move v1, v0

    .end local v0           #correctionCount:I
    .restart local v1       #correctionCount:I
    goto :goto_6
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public userSwitched()V
    .locals 5

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->resetEditObserver()V

    .line 731
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v1, v2, :cond_1

    .line 732
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 734
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnUserSwitched:[Ljava/lang/reflect/Method;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 731
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "STATUSBAR-QuickSettingPanel"

    const-string v3, "IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 737
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "STATUSBAR-QuickSettingPanel"

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 739
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 740
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "STATUSBAR-QuickSettingPanel"

    const-string v3, "InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 744
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    return-void
.end method
