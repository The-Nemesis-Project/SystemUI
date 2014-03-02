.class public Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AllShareCastQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AllShareCastQuickSettingButton"


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 99
    const v3, 0x7f0c00de

    const v4, 0x7f0201ac

    const v5, 0x7f0201ab

    const v6, 0x7f0201aa

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 41
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 47
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 50
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 106
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->update()V

    return-void
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 147
    const-string v0, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private handleStateChanged(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 122
    const-string v0, "STATUSBAR-AllShareCastQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WfdManager handleStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    packed-switch p1, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 129
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSideSyncRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 204
    const/4 v0, -0x1

    .line 205
    .local v0, isSideSync:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "PSS_SERVICE_CONNECTED"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    if-ne v0, v1, :cond_0

    .line 209
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWifiDisplayOnSetting:Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    .line 165
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 169
    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v2, "init SecProductFeature_WLAN.SEC_PRODUCT_FEATURE_WLAN_WIFIDISPLAY_OLD:true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v2, "onClick(): AllShare state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v2, "onClick(): Screen Mirroring state change is not allowed, DPM"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, v5}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v1, :cond_3

    .line 270
    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v2, "mWfdManager is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_3
    if-eqz p1, :cond_5

    .line 276
    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v2, "WFD activate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "show_dialog_once"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string v1, "tag_write_if_success"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->isWfdEnabledPlayer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdModeAlways()V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 296
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->statusBarCollapse()V

    goto :goto_0

    .line 289
    :cond_5
    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v2, "WFD deactivate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, v4}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AllShareCastSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method
