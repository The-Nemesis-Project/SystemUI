.class public Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "ToddlerModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;
    }
.end annotation


# static fields
.field private static final DB_TODDLER_MODE_ON:Ljava/lang/String; = "toddler_mode_switch"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-ToddlerModeController"

.field private static mPreviousMobileDataState:Z

.field private static mPreviousWifiState:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/StatusBarManager;

.field private mState:Z

.field private mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mPreviousMobileDataState:Z

    .line 68
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mPreviousWifiState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 89
    const v3, 0x7f0c00ee

    const v4, 0x7f0201f3

    const v5, 0x7f0201f2

    const v6, 0x7f0201f1

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 72
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    .line 73
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 74
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    .line 99
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toddler_mode_switch"

    const/4 v3, -0x2

    invoke-static {v0, v1, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->setActivateStatus(I)V

    .line 104
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 107
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    const-string v1, "toddler"

    const v3, 0x7f020141

    invoke-virtual {v0, v1, v3, v7, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    const-string v1, "toddler"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 110
    return-void

    :cond_0
    move v0, v7

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/4 v9, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->setMode(Z)V

    return-void
.end method

.method private checkSimReady(Z)Z
    .locals 7
    .parameter "mShowPopup"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 255
    .local v0, SimState:I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_3

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 261
    if-nez p1, :cond_1

    .line 295
    :goto_0
    return v3

    .line 264
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0112

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v4, 0x7f0c0113

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 268
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->statusBarCollapse()V

    .line 276
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 279
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 285
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 287
    .local v2, kgm:Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 292
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #kgm:Landroid/app/KeyguardManager;
    :cond_3
    move v3, v4

    .line 295
    goto :goto_0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toddler_mode_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(Z)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-nez p1, :cond_4

    move v0, v1

    .line 147
    .local v0, mEnableConnectivity:Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "toddler_mode_switch"

    if-eqz p1, :cond_5

    :goto_1
    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 150
    const-string v1, "STATUSBAR-ToddlerModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConnectivity : set to  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->checkSimReady(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mPreviousMobileDataState:Z

    .line 160
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mPreviousMobileDataState:Z

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    .line 167
    if-eqz p1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mPreviousWifiState:Z

    .line 171
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mPreviousWifiState:Z

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 182
    :cond_3
    return-void

    .end local v0           #mEnableConnectivity:Z
    :cond_4
    move v0, v2

    .line 145
    goto :goto_0

    .restart local v0       #mEnableConnectivity:Z
    :cond_5
    move v1, v2

    .line 147
    goto :goto_1
.end method

.method private showConfirmPopup(Z)V
    .locals 5
    .parameter "state"

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, theme:I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 208
    const/4 v1, 0x5

    .line 211
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 213
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0c00ee

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p1, :cond_1

    const v2, 0x7f0c011c

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->statusBarCollapse()V

    .line 241
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 242
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 247
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 248
    return-void

    .line 213
    .end local v0           #kgm:Landroid/app/KeyguardManager;
    :cond_1
    const v2, 0x7f0c011d

    goto :goto_0

    .line 245
    .restart local v0       #kgm:Landroid/app/KeyguardManager;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    const/4 v6, -0x2

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 118
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "STATUSBAR-ToddlerModeController"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v0, "STATUSBAR-ToddlerModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToddlerMode onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->showConfirmPopup(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->onChange(Z)V

    .line 308
    return-void
.end method
