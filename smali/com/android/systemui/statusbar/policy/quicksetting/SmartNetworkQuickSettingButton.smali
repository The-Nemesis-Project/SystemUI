.class public Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SmartNetworkQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;
    }
.end annotation


# static fields
.field private static final DB_SMART_NETWORK_ON:Ljava/lang/String; = "smart_network"

.field private static final DB_WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"

.field private static final SMARTNETWORK_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_smarnetwork_checked"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SmartNetwork"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 62
    const/4 v2, 0x0

    const v3, 0x7f0c00e4

    const v4, 0x7f0201e0

    const v5, 0x7f0201df

    const v6, 0x7f0201de

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;

    .line 71
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_network"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->setActivateStatus(I)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_network"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mState:Z

    .line 76
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 74
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->setMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_network"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private onSmartNetworkPopup()V
    .locals 8

    .prologue
    const/high16 v7, -0x100

    .line 118
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 120
    .local v2, mDormantModeAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f040049

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, mSmartNetworkAlertView:Landroid/view/View;
    const v5, 0x7f090116

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 125
    .local v4, mSmartNetworkCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$1;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c00fb

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 142
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 143
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v5, :cond_0

    .line 159
    const v5, 0x7f090115

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->statusBarCollapse()V

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 170
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 179
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 184
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 185
    return-void

    .line 182
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 200
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_network"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    if-ne p1, v3, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SMARTNETWORK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, smart_network_changed:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 215
    return-void

    .line 210
    .end local v0           #smart_network_changed:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_network"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    return-void
.end method

.method public onClick(Z)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "STATUSBAR-SmartNetwork"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v1, "STATUSBAR-SmartNetwork"

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

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "STATUSBAR-SmartNetwork"

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

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_smarnetwork_checked"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 103
    .local v0, mChecked:I
    if-eqz p1, :cond_2

    .line 104
    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->onSmartNetworkPopup()V

    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->setMode(I)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WirelessSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->mSmartPauseObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$SmartPauseObserver;->onChange(Z)V

    .line 257
    return-void
.end method
