.class public Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SmartPauseQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;
    }
.end annotation


# static fields
.field private static final DB_SMART_PAUSE_ON:Ljava/lang/String; = "smart_pause"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SmartPause"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;

.field private mState:Z


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

    const v3, 0x7f0c00e3

    const v4, 0x7f0201e3

    const v5, 0x7f0201e2

    const v6, 0x7f0201e1

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->setActivateStatus(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mState:Z

    .line 64
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

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_pause"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_pause"

    const/4 v4, -0x2

    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, smart_pause_changed:Landroid/content/Intent;
    const-string v2, "isEnable"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 121
    const-string v1, "STATUSBAR-SmartPause"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPause sendBroadcaset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v1, "STATUSBAR-SmartPause"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPause sendBroadcaset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 160
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->setActivateStatus(I)V

    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->setMode(I)V

    .line 162
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_pause"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 70
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "STATUSBAR-SmartPause"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v0, "STATUSBAR-SmartPause"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPause onClick("

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

    .line 85
    const-string v0, "STATUSBAR-SmartPause"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPause onClick("

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

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    const-string v0, "STATUSBAR-SmartPause"

    const-string v1, "onClick(): SmartPause mode state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 98
    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const v0, 0x7f0c00f5

    const v1, 0x7f0c00f6

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->setActivateStatus(I)V

    .line 108
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->setMode(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->onChange(Z)V

    .line 172
    return-void
.end method
