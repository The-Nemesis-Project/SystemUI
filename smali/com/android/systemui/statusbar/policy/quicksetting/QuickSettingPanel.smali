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

.field private mButtonCorrectionWidth:I

.field private mButtonGap:I

.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mColumnNumber:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDefaultDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

.field private mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

.field mQuickSettingButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleLine:Z

.field private mVisibleButtonNum:I

.field mWM:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
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

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v0, "STATUSBAR-QuickSettingPanel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->TW_TAG:Ljava/lang/String;

    .line 58
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurrentUserId:I

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 86
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mWM:Landroid/view/IWindowManager;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurrentUserId:I

    .line 97
    return-void
.end method

.method private LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 332
    const-string v3, "STATUSBAR-QuickSettingPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, quickPanelActiveList:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    .line 336
    .local v1, main_list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 337
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    const-string v3, "STATUSBAR-QuickSettingPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "main list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "quickPanelActiveList.length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getButtonNumberFromDB()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    return v0
.end method

.method private getButtonNumberFromDB()I
    .locals 5

    .prologue
    .line 176
    const/16 v0, 0xa

    .line 178
    .local v0, ButtonNumber:I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :cond_0
    :goto_0
    const-string v2, "STATUSBAR-QuickSettingPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button Number from DB :  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "STATUSBAR-QuickSettingPanel"

    const-string v3, "getButtonNumberFromDB() - SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeDividerVisible(II)V
    .locals 5
    .parameter "i"
    .parameter "j"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    const v4, 0x7f0700a5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, divider:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 346
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    if-eqz v1, :cond_2

    .line 347
    if-nez p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 347
    goto :goto_0

    .line 349
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    rem-int v1, p2, v1

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private refreshView()V
    .locals 17

    .prologue
    .line 263
    const-string v12, "STATUSBAR-QuickSettingPanel"

    const-string v13, "refreshView()"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateButtonInfo()V

    .line 266
    const/4 v8, 0x0

    .line 268
    .local v8, j:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "notification_panel_active_app_list"

    const/4 v14, -0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "notification_panel_active_app_list"

    const/4 v14, -0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, appListFromDB:Ljava/lang/String;
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurrentUserId:I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurrentUserId:I

    const/16 v13, 0x64

    if-ge v12, v13, :cond_0

    .line 276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MultiUserMode;"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 285
    .end local v2           #appListFromDB:Ljava/lang/String;
    .local v1, QBtnAttr:[Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v12, v1

    if-ge v7, v12, :cond_2

    .line 287
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "com.android.systemui.statusbar.policy.quicksetting."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v1, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "QuickSettingButton"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 288
    .local v11, tempClass:Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v12, v14

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    check-cast v12, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 285
    .end local v11           #tempClass:Ljava/lang/Class;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 281
    .end local v1           #QBtnAttr:[Ljava/lang/String;
    .end local v7           #i:I
    :cond_1
    const-string v12, "Wifi;AutoRotate;Location;SilentMode;Bluetooth;DormantMode;PowerSaving;MultiWindow;SmartStay;"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #QBtnAttr:[Ljava/lang/String;
    goto :goto_0

    .line 289
    .restart local v7       #i:I
    :catch_0
    move-exception v6

    .line 290
    .local v6, e:Ljava/lang/ClassNotFoundException;
    const-string v12, "STATUSBAR-QuickSettingPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ClassNotFoundException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 291
    .end local v6           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    .line 292
    .local v6, e:Ljava/lang/NoSuchMethodException;
    const-string v12, "STATUSBAR-QuickSettingPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NoSuchMethodException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 293
    .end local v6           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v6

    .line 294
    .local v6, e:Ljava/lang/SecurityException;
    const-string v12, "STATUSBAR-QuickSettingPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "SecurityException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 295
    .end local v6           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 296
    .local v6, e:Ljava/lang/InstantiationException;
    const-string v12, "STATUSBAR-QuickSettingPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "InstantiationException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 297
    .end local v6           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v6

    .line 298
    .local v6, e:Ljava/lang/IllegalAccessException;
    const-string v12, "STATUSBAR-QuickSettingPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "IllegalAccessException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 299
    .end local v6           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v6

    .line 300
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "STATUSBAR-QuickSettingPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "IllegalArgumentException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 301
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v6

    .line 302
    .local v6, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v12, "STATUSBAR-QuickSettingPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "InvocationTargetException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 306
    .end local v6           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const/4 v5, 0x0

    .line 307
    .local v5, correctionLeftMargin:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCorrectionWidth:I

    .line 309
    .local v3, correctionCount:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 310
    .local v9, limit:I
    const/4 v7, 0x0

    move v4, v3

    .end local v3           #correctionCount:I
    .local v4, correctionCount:I
    :goto_3
    if-ge v7, v9, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 313
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v10, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 315
    .local v10, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonWidth:I

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonWidth:I

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->dynamicallyReduceTextSize(I)V

    .line 318
    add-int/lit8 v3, v4, -0x1

    .end local v4           #correctionCount:I
    .restart local v3       #correctionCount:I
    if-lez v4, :cond_3

    .line 319
    iget v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 323
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    rem-int v12, v8, v12

    iget v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v12, v5

    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 324
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    div-int v12, v8, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    add-int/lit8 v8, v8, 0x1

    .line 310
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    .end local v3           #correctionCount:I
    .restart local v4       #correctionCount:I
    goto :goto_3

    .line 321
    .end local v4           #correctionCount:I
    .restart local v3       #correctionCount:I
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCorrectionWidth:I

    goto :goto_4

    .line 329
    .end local v3           #correctionCount:I
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #correctionCount:I
    :cond_4
    return-void
.end method

.method private updateButtonInfo()V
    .locals 8

    .prologue
    .line 106
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 108
    .local v4, res:Landroid/content/res/Resources;
    const/4 v3, 0x1

    .line 110
    .local v3, quickpanelUseFullscreen:Z
    const v5, 0x7f0c004b

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getFraction(III)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 111
    const/4 v3, 0x0

    .line 115
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUpdateDisplayWidthWithoutNavigationBar:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 119
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 128
    const v5, 0x7f0c0049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 129
    .local v2, margingRight:I
    const v5, 0x7f0c004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 130
    .local v1, margingLeft:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v2

    sub-int v0, v5, v1

    .line 136
    .end local v1           #margingLeft:I
    .end local v2           #margingRight:I
    .local v0, displayWidth:I
    :goto_2
    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    .line 137
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v5, :cond_3

    .line 138
    const v5, 0x7f0c007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    .line 142
    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonWidth:I

    .line 143
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonWidth:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    sub-int/2addr v5, v6

    sub-int v5, v0, v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCorrectionWidth:I

    .line 144
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v5, :cond_4

    .line 145
    const v5, 0x7f0c0091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonHeight:I

    .line 149
    :goto_4
    return-void

    .line 132
    .end local v0           #displayWidth:I
    :cond_2
    const v5, 0x7f0c0059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .restart local v0       #displayWidth:I
    goto :goto_2

    .line 140
    :cond_3
    const v5, 0x7f0c007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    goto :goto_3

    .line 147
    :cond_4
    const v5, 0x7f0c006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonHeight:I

    goto :goto_4

    .line 112
    .end local v0           #displayWidth:I
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 191
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    .line 103
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 12
    .parameter "singleLine"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 194
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSingleLine:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 197
    :cond_0
    const-string v7, "STATUSBAR-QuickSettingPanel"

    const-string v8, "setSingleLine() - return"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateButtonInfo()V

    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, j:I
    const/4 v2, 0x0

    .line 206
    .local v2, correctionLeftMargin:I
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCorrectionWidth:I

    .line 208
    .local v0, correctionCount:I
    if-eqz p1, :cond_7

    .line 209
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 210
    .local v5, limit:I
    const/4 v3, 0x0

    .local v3, i:I
    move v1, v0

    .end local v0           #correctionCount:I
    .local v1, correctionCount:I
    :goto_1
    if-ge v3, v5, :cond_6

    .line 211
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I

    if-ge v3, v7, :cond_4

    .line 212
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 213
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .local v6, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    add-int/lit8 v0, v1, -0x1

    .end local v1           #correctionCount:I
    .restart local v0       #correctionCount:I
    if-lez v1, :cond_3

    .line 218
    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    :goto_2
    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v4

    add-int/2addr v7, v2

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 223
    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 224
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {p0, v7, v6}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    add-int/lit8 v4, v4, 0x1

    .line 227
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0           #correctionCount:I
    .restart local v1       #correctionCount:I
    goto :goto_1

    .line 220
    .end local v1           #correctionCount:I
    .restart local v0       #correctionCount:I
    .restart local v6       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCorrectionWidth:I

    goto :goto_2

    .line 229
    .end local v0           #correctionCount:I
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1       #correctionCount:I
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 230
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    move v0, v1

    .end local v1           #correctionCount:I
    .restart local v0       #correctionCount:I
    goto :goto_3

    .end local v0           #correctionCount:I
    .restart local v1       #correctionCount:I
    :cond_6
    move v0, v1

    .line 233
    .end local v1           #correctionCount:I
    .restart local v0       #correctionCount:I
    goto :goto_0

    .line 234
    .end local v3           #i:I
    .end local v5           #limit:I
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 235
    .restart local v5       #limit:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v5, :cond_1

    .line 236
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 237
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 238
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 240
    .restart local v6       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    rem-int v7, v4, v7

    if-nez v7, :cond_a

    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCorrectionWidth:I

    .line 244
    const/4 v2, 0x0

    move v1, v0

    .line 246
    .end local v0           #correctionCount:I
    .restart local v1       #correctionCount:I
    :goto_5
    add-int/lit8 v0, v1, -0x1

    .end local v1           #correctionCount:I
    .restart local v0       #correctionCount:I
    if-lez v1, :cond_9

    .line 247
    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 251
    :goto_6
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    rem-int v7, v4, v7

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    add-int/2addr v8, v9

    mul-int/2addr v7, v8

    add-int/2addr v7, v2

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 252
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mColumnNumber:I

    div-int v7, v4, v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonHeight:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonGap:I

    add-int/2addr v8, v9

    mul-int/2addr v7, v8

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 253
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {p0, v7, v6}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    add-int/lit8 v4, v4, 0x1

    .line 256
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 249
    .restart local v6       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCorrectionWidth:I

    goto :goto_6

    :cond_a
    move v1, v0

    .end local v0           #correctionCount:I
    .restart local v1       #correctionCount:I
    goto :goto_5
.end method

.method public userSwitched(I)V
    .locals 7
    .parameter "newUserId"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 357
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurrentUserId:I

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;->onChange(Z)V

    .line 361
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_active_app_list"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 365
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->onChange(Z)V

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_active_app_list"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mNumberObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 371
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 372
    .local v1, limit:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->userSwitched()V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method
