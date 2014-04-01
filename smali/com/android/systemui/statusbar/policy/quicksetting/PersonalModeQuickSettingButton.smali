.class public Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "PersonalModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final ACTION_SECRETMODE:Ljava/lang/String; = "com.samsung.android.secretmode.action.ACTION_SHOW_DISCLAIMER"

.field private static final DB_PERSONAL_MODE_ON:Ljava/lang/String; = "personal_mode_enabled"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PersonalmodeSettingButton"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v1, 0x7f0a00f6

    const/4 v5, 0x0

    .line 88
    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_1

    .line 91
    const v2, 0x7f0201e4

    const v3, 0x7f0201e3

    const v4, 0x7f0201e2

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIII)V

    .line 101
    :goto_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V

    .line 104
    return-void

    :cond_0
    move v0, v5

    .line 88
    goto :goto_0

    .line 98
    :cond_1
    const v0, 0x7f0201bd

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(II)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->setMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V

    return-void
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_mode_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 149
    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_mode_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 153
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private updateState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V

    .line 114
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 120
    const-string v1, "STATUSBAR-PersonalmodeSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersonalMode  onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const-string v1, "STATUSBAR-PersonalmodeSettingButton"

    const-string v2, "onClick(): Personal mode state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    if-eq v1, p1, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.android.secretmode.service"

    const-string v2, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    return-void
.end method
