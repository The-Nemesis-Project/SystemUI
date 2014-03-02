.class public Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SmartStayQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;
    }
.end annotation


# static fields
.field private static final DB_SMART_STAY_ON:Ljava/lang/String; = "intelligent_sleep_mode"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SmartStay"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

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

    const v3, 0x7f0c00e1

    const v4, 0x7f0201ea

    const v5, 0x7f0201e9

    const v6, 0x7f0201e8

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setActivateStatus(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z

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

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 117
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 152
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setActivateStatus(I)V

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setMode(I)V

    .line 154
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

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
    const-string v0, "STATUSBAR-SmartStay"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v0, "STATUSBAR-SmartStay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartStay onClick("

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

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const-string v0, "STATUSBAR-SmartStay"

    const-string v1, "onClick(): SmartStay state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 97
    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const v0, 0x7f0c00f9

    const v1, 0x7f0c00fa

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setActivateStatus(I)V

    .line 107
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->onChange(Z)V

    .line 164
    return-void
.end method
