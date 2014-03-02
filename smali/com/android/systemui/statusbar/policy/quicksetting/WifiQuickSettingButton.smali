.class public Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "WifiQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WifiQuickSettingButton"

.field private static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field private static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1

.field private static final is3LMAllowed:Z


# instance fields
.field private INFO_TYPE_DPM_WIFI:I

.field private INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

.field private isAirPlaneMode:I

.field private mBlockWifiInFlightMode:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mWifiActivated:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 134
    const/4 v2, 0x0

    const v3, 0x7f0c00d1

    const v4, 0x7f0201f6

    const v5, 0x7f0201f5

    const v6, 0x7f0201f4

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_DPM_WIFI:I

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 142
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0021

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 157
    :cond_0
    return-void

    .line 148
    :catch_0
    move-exception v9

    .line 149
    .local v9, ex:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_DPM_WIFI:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    return v0
.end method

.method private checkAndShowToastMessage()V
    .locals 4

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_restriction_on_sprintdm"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "STATUSBAR-WifiQuickSettingButton"

    const-string v2, "checkAndShowToastMessage"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStateChanged(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 306
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 303
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isBlocked()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiActivated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    .line 168
    return-void

    .line 166
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 8
    .parameter "state"

    .prologue
    const v7, 0x7f0c010c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "STATUSBAR-WifiQuickSettingButton"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->checkAndShowToastMessage()V

    .line 187
    const-string v2, "STATUSBAR-WifiQuickSettingButton"

    const-string v3, "onClick(): Wifi state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    const-string v2, "STATUSBAR-WifiQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eqz p1, :cond_6

    .line 232
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    if-eqz v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->isAirPlaneMode:I

    .line 235
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->isAirPlaneMode:I

    if-ne v2, v6, :cond_3

    .line 236
    const-string v2, "STATUSBAR-WifiQuickSettingButton"

    const-string v3, "Block Wifi In Flight Mode"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v2, :cond_5

    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "toddler_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 246
    .local v1, isToddlerMode:I
    if-ne v1, v6, :cond_5

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 252
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 250
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    .line 258
    .end local v1           #isToddlerMode:I
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 264
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 265
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    .line 269
    :cond_7
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    goto/16 :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 273
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
