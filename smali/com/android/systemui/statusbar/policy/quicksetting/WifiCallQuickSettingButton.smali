.class public Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "WifiCallQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;
    }
.end annotation


# static fields
.field private static final DB_WIFI_CALL_TOGGLE:Ljava/lang/String; = "wifi_call_toggle"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WifiCall"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mState:Z

.field private mWFCObserver:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 50
    const/4 v2, 0x0

    const v3, 0x7f0c017d

    const v4, 0x7f020276

    const v5, 0x7f020275

    const v6, 0x7f020274

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mWFCObserver:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_call_toggle"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->setActivateStatus(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_call_toggle"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mState:Z

    .line 65
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 62
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_call_toggle"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_call_toggle"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mWFCObserver:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_call_toggle"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mWFCObserver:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "STATUSBAR-WifiCall"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "STATUSBAR-WifiCall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiCall onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->setActivateStatus(I)V

    .line 101
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->setMode(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v1, v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v1, v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "com.samsung.tmowfc.wfcpref"

    const-string v1, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton;->mWFCObserver:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallQuickSettingButton$WFCObserver;->onChange(Z)V

    .line 146
    return-void
.end method
