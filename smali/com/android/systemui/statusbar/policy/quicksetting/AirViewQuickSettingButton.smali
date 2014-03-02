.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirViewQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final AIR_MODE_MASTER_OFF:I = 0x0

.field private static final AIR_MODE_MASTER_ON:I = 0x1

.field private static final AUTO_AIR_MODE:I = 0x2

.field private static final FINGER_AIR_MODE:I = 0x1

.field private static final PEN_AIR_MODE:I = 0x0

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirView"

.field private static final URI_AIR_BUTTON_ONOFF:Ljava/lang/String; = "air_button_onoff"

.field private static final URI_AIR_VIEW_MASTER_STATE:Ljava/lang/String; = "air_view_master_onoff"

.field private static final URI_AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"


# instance fields
.field private isMagnificationEnabled:Z

.field private mAirButtonObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;

.field private mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

.field private mAirViewMode:I

.field private mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

.field private mPenDettachedState:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 110
    const/4 v2, 0x0

    const v3, 0x7f0c00ea

    const v4, 0x7f0201a6

    const v5, 0x7f0201a5

    const v6, 0x7f0201a4

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirButtonObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    .line 119
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_2

    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    .line 132
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mPenDettachedState:Z

    .line 133
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v7

    .line 123
    goto :goto_1

    :cond_2
    move v9, v7

    .line 127
    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mPenDettachedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setDBvalues(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    return-void
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setDBvalues(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    .line 204
    if-ne p1, v4, :cond_3

    .line 205
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-ne v0, v4, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 211
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 228
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setDBvalues(I)V

    .line 229
    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, theme:I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 383
    const/4 v1, 0x5

    .line 385
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0155

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->statusBarCollapse()V

    .line 408
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 409
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 415
    return-void

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirButtonObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    return-void
.end method

.method public doNext()V
    .locals 4

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 481
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 482
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setMode(I)V

    .line 483
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_master_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "air_button_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirButtonObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method public isAllFingerOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x2

    const/4 v6, 0x0

    .line 332
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_magnifier"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 334
    .local v1, magnifier:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_information_preview"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 336
    .local v0, informationPreview:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_pregress_bar_preview"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 338
    .local v2, progressBarPreview:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_speed_dial_tip"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 340
    .local v4, speedDialTip:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 342
    .local v3, soundNHapticFeedback:I
    const-string v7, "STATUSBAR-AirView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllFingerOptionDisabled()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    or-int v7, v1, v0

    or-int/2addr v7, v2

    or-int/2addr v7, v4

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 316
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllPenOptionsDisabled()Z

    move-result v0

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-ne v1, v0, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0

    .line 320
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 321
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mPenDettachedState:Z

    if-ne v1, v0, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllPenOptionsDisabled()Z

    move-result v0

    goto :goto_0

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isAllPenOptionsDisabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    .line 353
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 355
    .local v1, hoveringInformationPreview:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_progress_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 357
    .local v3, hoveringProgressPreview:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_speed_dial_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 359
    .local v5, hoveringSpeedDialPreview:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_icon_label"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 361
    .local v0, hoveringIconLabel:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_list_scroll"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 363
    .local v2, hoveringListScroll:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_sound"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 365
    .local v4, hoveringSoundNHapticFeedback:I
    const-string v8, "STATUSBAR-AirView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllPenOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "STATUSBAR-AirView"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "STATUSBAR-AirView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirView onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    const-string v0, "STATUSBAR-AirView"

    const-string v1, "onClick(): AirView mode state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 184
    if-eqz p1, :cond_5

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    if-eqz v0, :cond_4

    .line 186
    :cond_3
    const v0, 0x7f0c00f1

    const v1, 0x7f0c00f2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 196
    :cond_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 197
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 6
    .parameter "titleRes"
    .parameter "messageRes"

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 422
    :cond_0
    const/4 v2, 0x0

    .line 423
    .local v2, theme:I
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v3, :cond_1

    .line 424
    const/4 v2, 0x5

    .line 427
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0171

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, popupMsg:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 459
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 460
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 465
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->statusBarCollapse()V

    .line 468
    return-void

    .line 463
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;->onChange(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;->onChange(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;->onChange(Z)V

    .line 496
    return-void
.end method
