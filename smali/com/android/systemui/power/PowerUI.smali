.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# static fields
.field static final ABNORMAL_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charging"

.field static final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CHECK_SIOP_LEVEL"

.field static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_WARNING:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_WARNING"

.field static final ACTION_POWERSAVINGMODE_AUTO_ENABLE:Ljava/lang/String; = "android.settings.POWERSAVING_AUTO_ENABLE"

.field static final ACTION_SPEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field static final ACTION_START_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

.field static final ACTION_STOP_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

.field static final BATTERY_CHARGETYPE_SLOW:I = 0x2

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SWELLING_PERIOD:I = 0xea60

.field static final CHARGING_INTERRUPTION_PERIOD:I = 0xea60

.field static final DEBUG:Z = false

.field static final DEVICE_TYPE_PHONE:I = 0x1

.field static final DEVICE_TYPE_TABLET:I = 0x2

.field static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field static final EXTRA_CHECK_SIOP_LEVEL_LEVEL:Ljava/lang/String; = "check_siop_level_level"

.field static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field static final EXTRA_PENINSERT:Ljava/lang/String; = "penInsert"

.field static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "remote"

.field static final EXTRA_REMOTEVIEWS_TYPE:Ljava/lang/String; = "type"

.field static final EXTRA_REMOTEVIEWS_TYPE_BATTERY:Ljava/lang/String; = "battery"

.field static final EXTRA_REMOTEVIEWS_VISIBILITY:Ljava/lang/String; = "visibility"

.field static final FACE_DETECTION_FAILURE_DURATION:I = 0xbb8

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final INCOMPATIBLE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowIncompatibleChargerWarning"

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final MAXIMUM_LOW_BATTERY_DUMP:I = 0x3

.field static final OVERHEAT_SHUTDOWN:Ljava/lang/String; = "OverheatShutdown"

.field static final OVERHEAT_SHUTDOWN_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_overheat_shutdown"

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final POWERSAVINGMODE_AUTO_THRESHOLD:I = 0x14

.field static final PRODUCT_DEV:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY:I = 0x9

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY_ESTIMATED_TIME:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING:I = 0x8

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_DELAY_TIME:I = 0xea60

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_ESTIMATED_TIME:I = 0x7530

.field static final SLOW_CHARGING_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowSlowChargingWarning"

.field static final SOC_SUDDEN_CHANGE_THRESHOLD:I = 0xa

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_BATTERY_SWELLING_WARNING:I = 0x4

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final VRPOPUP_BUNDLE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc.vrpopup_bundle"

.field static final VRPOPUP_INTENT:Ljava/lang/String; = "com.samsung.android.intent.action.VR_POPUP"

.field static final VRPOPUP_PKG:Ljava/lang/String; = "popup_activity"

.field static final VRPOPUP_STRING:Ljava/lang/String; = "popup_string"

.field static final VRPOPUP_TYPE:Ljava/lang/String; = "popup_type"

.field static final WIRELESS_CHARGING_DURATION:I = 0xbb8


# instance fields
.field mATT:Z

.field mAbnormalChargingDialog:Landroid/app/AlertDialog;

.field mAbnormalChargingNotification:Landroid/app/Notification;

.field mAbnormalChargingTextView:Landroid/widget/TextView;

.field mBatteryChargetype:I

.field mBatteryCurrentavg:I

.field mBatteryHealth:I

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryOnline:I

.field mBatteryStatus:I

.field mBatterySwelling:Z

.field mBatterySwellingDialog:Landroid/app/AlertDialog;

.field mBatterySwellingLevel:I

.field mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingRecoveryCount:I

.field mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

.field mBatterySwellingRecoveryLevel:I

.field mBatterySwellingRecoveryTemperature:I

.field mBatterySwellingRecoveryThreshold:I

.field mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingTask:Ljava/lang/Runnable;

.field mBatterySwellingTemperature:I

.field mBatteryTemperature:I

.field mChargerVibration:Z

.field mChargingInterruptionDialog:Landroid/app/AlertDialog;

.field mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionTask:Ljava/lang/Runnable;

.field mCoverCamera:Z

.field mDeviceType:I

.field mFTAMode:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field mPlugType:I

.field mPowersavingmodeDialog:Landroid/app/AlertDialog;

.field mSIOPLevel:I

.field mSPen:Z

.field private mScreenOffTime:J

.field mThemeContext:Landroid/content/Context;

.field mVZW:Z

.field mWaterDamageDialog:Landroid/app/Dialog;

.field mWaterDamageTextView:Landroid/widget/TextView;

.field mWirelessChargingDialog:Landroid/app/AlertDialog;

.field mWirelessChargingTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 180
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 181
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 182
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 183
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 184
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 185
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 186
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 187
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 188
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 193
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 195
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    .line 196
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    .line 197
    const/16 v0, 0x2b2

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    .line 198
    const/16 v0, 0x45

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    .line 199
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    .line 200
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    .line 202
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 235
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    .line 238
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    .line 361
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1023
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    .line 1091
    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    .line 1244
    new-instance v0, Lcom/android/systemui/power/PowerUI$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    .line 1457
    new-instance v0, Lcom/android/systemui/power/PowerUI$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$20;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 1464
    new-instance v0, Lcom/android/systemui/power/PowerUI$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$21;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownTask:Ljava/lang/Runnable;

    .line 1623
    new-instance v0, Lcom/android/systemui/power/PowerUI$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$24;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 342
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 343
    const/4 v2, 0x1

    .line 355
    :cond_0
    :goto_0
    return v2

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 353
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 354
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 355
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 353
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 358
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelAbnormalChargingNotification()V
    .locals 3

    .prologue
    .line 1672
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1673
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1676
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1678
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1680
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFaceDetectionFailureNotification()V
    .locals 3

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1617
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f0a014f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1619
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1621
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1570
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1573
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1575
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 1577
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissAbnormalChargingWarning()V
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1101
    :cond_0
    return-void
.end method

.method dismissBatterySwellingRecoveryNotice()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1254
    :cond_0
    return-void
.end method

.method dismissBatterySwellingWarning()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    return-void
.end method

.method dismissChargingInterruptionWarning()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 961
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 964
    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 932
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 734
    :cond_0
    return-void
.end method

.method dismissOverheatShutdownNotice()V
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1486
    :cond_0
    return-void
.end method

.method dismissOverheatShutdownWarning()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1418
    :cond_0
    return-void
.end method

.method dismissPowersavingmodeNotice()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1298
    :cond_0
    return-void
.end method

.method dismissWaterDamageWarning()V
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1356
    :cond_0
    return-void
.end method

.method dismissWirelessChargingNotice()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1033
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1789
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1791
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1798
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1800
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1801
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1804
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1806
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1807
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1808
    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1810
    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1812
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1813
    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1814
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1816
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1818
    return-void

    .line 1794
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1796
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method notifyAbnormalChargingNotification(I)V
    .locals 9
    .parameter "messageId"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0a0147

    .line 1633
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1635
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 1636
    const-string v5, "PowerUI"

    const-string v6, "notifyAbnormalChargingNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :goto_0
    return-void

    .line 1642
    :cond_0
    if-ne v7, p1, :cond_2

    .line 1643
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0144

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1644
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1650
    .local v3, text:Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 1651
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1652
    if-ne v7, p1, :cond_3

    .line 1653
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f0200be

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1657
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, -0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 1658
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1659
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1660
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1663
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1664
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1666
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1668
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1646
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0141

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1647
    .restart local v4       #title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0143

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1655
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f02026a

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_2
.end method

.method notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0a014f

    const/4 v8, 0x0

    .line 1580
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 1581
    const-string v5, "PowerUI"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :goto_0
    return-void

    .line 1585
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1587
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 1588
    const-string v5, "PowerUI"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1592
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a012e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1593
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1595
    .local v3, text:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 1596
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1597
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f020197

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1598
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1599
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1602
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1603
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1605
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1607
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    invoke-virtual {v1, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1609
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method notifyFullBatteryNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1533
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1535
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 1536
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :goto_0
    return-void

    .line 1540
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0a012e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1541
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0a012f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1543
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v7, :cond_1

    .line 1544
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 1545
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v8, 0x7f0200d7

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 1546
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 1547
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 1548
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1551
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1552
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1554
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1556
    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1558
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1559
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_2

    .line 1560
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1563
    :cond_2
    const v7, 0x10000006

    const-string v8, "PowerUI"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1565
    .local v0, fullBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v7, 0x4e20

    invoke-virtual {v0, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method playSound(I)V
    .locals 12
    .parameter "soundType"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1683
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1686
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1688
    .local v1, audioMode:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    if-eq v7, v1, :cond_0

    const/4 v7, 0x3

    if-eq v7, v1, :cond_0

    .line 1689
    const-string v7, "PowerUI"

    const-string v8, "recording so doesn\'t play sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    .end local v1           #audioMode:I
    :goto_0
    return-void

    .line 1694
    :cond_0
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_1

    .line 1697
    const-string v7, "PowerUI"

    const-string v8, "playSound : NotificationPlayer is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    new-instance v7, Lcom/android/systemui/media/NotificationPlayer;

    const-string v8, "PowerUI"

    invoke-direct {v7, v8}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1700
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_1

    .line 1701
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new NotificationPlayer"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_1
    if-eqz v0, :cond_3

    .line 1708
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1713
    .local v4, ringerMode:I
    :goto_1
    if-ne v11, v4, :cond_2

    if-ne v10, p1, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    if-eqz v7, :cond_2

    .line 1714
    const/4 v4, 0x1

    .line 1715
    const-string v7, "PowerUI"

    const-string v8, "ring mode but vibrates in Note3"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_2
    if-ne v11, v4, :cond_4

    .line 1721
    packed-switch p1, :pswitch_data_0

    .line 1735
    :try_start_0
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1739
    .local v5, soundUri:Landroid/net/Uri;
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1740
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_NORMAL"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1769
    .end local v5           #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1770
    .local v2, exception:Ljava/lang/Exception;
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSound : Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1710
    .end local v2           #exception:Ljava/lang/Exception;
    .end local v4           #ringerMode:I
    :cond_3
    const/4 v4, 0x2

    .restart local v4       #ringerMode:I
    goto :goto_1

    .line 1723
    :pswitch_0
    :try_start_1
    const-string v7, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1724
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1726
    .end local v5           #soundUri:Landroid/net/Uri;
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "low_battery_sound"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1727
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1729
    .end local v5           #soundUri:Landroid/net/Uri;
    :pswitch_2
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1730
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1732
    .end local v5           #soundUri:Landroid/net/Uri;
    :pswitch_3
    const-string v7, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1733
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1741
    .end local v5           #soundUri:Landroid/net/Uri;
    :cond_4
    if-ne v10, v4, :cond_6

    .line 1743
    packed-switch p1, :pswitch_data_1

    .line 1753
    const/16 v3, 0xb

    .line 1757
    .local v3, hapticFeedback:I
    :goto_3
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    .line 1758
    .local v6, systemVibrator:Landroid/os/SystemVibrator;
    if-eqz v6, :cond_5

    .line 1759
    invoke-virtual {v6, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    .line 1763
    :goto_4
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_VIBRATE"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1745
    .end local v3           #hapticFeedback:I
    .end local v6           #systemVibrator:Landroid/os/SystemVibrator;
    :pswitch_4
    const/16 v3, 0xa

    .line 1746
    .restart local v3       #hapticFeedback:I
    goto :goto_3

    .line 1750
    .end local v3           #hapticFeedback:I
    :pswitch_5
    const/16 v3, 0xb

    .line 1751
    .restart local v3       #hapticFeedback:I
    goto :goto_3

    .line 1761
    .restart local v6       #systemVibrator:Landroid/os/SystemVibrator;
    :cond_5
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new SystemVibrator"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1764
    .end local v3           #hapticFeedback:I
    .end local v6           #systemVibrator:Landroid/os/SystemVibrator;
    :cond_6
    if-nez v4, :cond_7

    .line 1765
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_SILENT"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1767
    :cond_7
    const-string v7, "PowerUI"

    const-string v8, "unknown RINGER_MODE"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1743
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method sendLowBatteryIntentToHMT(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "pTitle"

    .prologue
    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.VR_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, lowBattIntent:Landroid/content/Intent;
    const-string v1, "popup_type"

    const-string v2, "LOWBATT_POPUP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const-string v1, "popup_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 890
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 891
    return-void
.end method

.method showAbnormalChargingWarning(I)V
    .locals 12
    .parameter "messageId"

    .prologue
    const v11, 0x7f0a0145

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1104
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "SHOULD_SHUT_DOWN"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v4, v8

    .line 1106
    .local v4, isShutdownOn:Z
    :goto_0
    if-eqz v4, :cond_1

    .line 1107
    const-string v7, "PowerUI"

    const-string v8, "don\'t show Abnormal charging warning while Shutdown is ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :goto_1
    return-void

    .end local v4           #isShutdownOn:Z
    :cond_0
    move v4, v7

    .line 1104
    goto :goto_0

    .line 1111
    .restart local v4       #isShutdownOn:Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v9, :cond_2

    .line 1112
    const-string v7, "PowerUI"

    const-string v8, "FTA Mode is ON so don\'t show Abnormal charging warning"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1116
    :cond_2
    const-string v9, "PowerUI"

    const-string v10, "showAbnormalChargingWarning()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 1122
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "com.android.systemui.power_abnormal_charging"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1123
    .local v0, abnormalChargeSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_5

    .line 1124
    if-ne v11, p1, :cond_4

    .line 1125
    const-string v9, "DoNotShowSlowChargingWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1126
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1128
    :cond_3
    const/4 v7, 0x3

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/4 v7, 0x4

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/16 v7, 0xa

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    .line 1129
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show while Dock connects"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1133
    :cond_4
    const-string v9, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1134
    const-string v7, "PowerUI"

    const-string v8, "Incompatible charger warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1140
    :cond_5
    if-ne v11, p1, :cond_7

    .line 1141
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0144

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1143
    .local v5, title:Ljava/lang/CharSequence;
    const/4 v7, 0x2

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v7, v9, :cond_6

    .line 1144
    const p1, 0x7f0a0146

    .line 1150
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 1151
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1147
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0141

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1154
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const/high16 v9, 0x7f04

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1155
    .local v6, v:Landroid/view/View;
    const v7, 0x7f070003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    .line 1157
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    move v3, p1

    .line 1162
    .local v3, finalMessageId:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1163
    .local v1, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1164
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1165
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1166
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v8, p0, v6, v0, v3}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1181
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1182
    .local v2, d:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1188
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 1189
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1190
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method showBatterySwellingRecoveryNotice()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1257
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1259
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1260
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_0
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_1
    move v2, v3

    .line 1257
    goto :goto_0

    .line 1264
    .restart local v2       #isShutdownOn:Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    .line 1265
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1269
    :cond_3
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingRecoveryNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 1273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1275
    const v3, 0x7f0a0139

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1276
    const v3, 0x7f0a013a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1277
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1280
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$13;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1286
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1287
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1288
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    .line 1290
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showBatterySwellingWarning()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1203
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1205
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1206
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_0
    move v2, v3

    .line 1203
    goto :goto_0

    .line 1210
    .restart local v2       #isShutdownOn:Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_2

    .line 1211
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1215
    :cond_2
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingWarning()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    .line 1219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1220
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1221
    const v3, 0x7f0a0137

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1222
    const v3, 0x7f0a0138

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1223
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1226
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1232
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1233
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1234
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    .line 1236
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 1239
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 1241
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method showChargingInterruptionWarning()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 967
    const-string v7, "PowerUI"

    const-string v8, "showChargingInterruptionWarning()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SHOULD_SHUT_DOWN"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 971
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 972
    const-string v6, "PowerUI"

    const-string v7, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_0
    move v2, v6

    .line 969
    goto :goto_0

    .line 977
    .restart local v2       #isShutdownOn:Z
    :cond_1
    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v9, v7, :cond_2

    .line 978
    const v3, 0x7f0a012c

    .line 989
    .local v3, messageId:I
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 991
    const v6, 0x7f0a012a

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 992
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 993
    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 995
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 996
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1006
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1007
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1008
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    .line 1010
    invoke-virtual {p0, v9}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 1012
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1013
    .local v5, powerManager:Landroid/os/PowerManager;
    if-nez v5, :cond_5

    .line 1014
    const-string v6, "PowerUI"

    const-string v7, "showChargingInterruptionWarning : fail to get PowerManager reference"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 979
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v3           #messageId:I
    .end local v5           #powerManager:Landroid/os/PowerManager;
    :cond_2
    const/4 v7, 0x7

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v8, :cond_3

    .line 980
    const v3, 0x7f0a012d

    .restart local v3       #messageId:I
    goto :goto_2

    .line 981
    .end local v3           #messageId:I
    :cond_3
    const/4 v7, 0x6

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v8, :cond_4

    .line 982
    const v3, 0x7f0a012b

    .restart local v3       #messageId:I
    goto :goto_2

    .line 984
    .end local v3           #messageId:I
    :cond_4
    const-string v6, "PowerUI"

    const-string v7, "status is NotCharging but health is wrong value"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1017
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v1       #d:Landroid/app/AlertDialog;
    .restart local v3       #messageId:I
    .restart local v5       #powerManager:Landroid/os/PowerManager;
    :cond_5
    const v6, 0x10000006

    const-string v7, "PowerUI"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 1019
    .local v4, notChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1020
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 935
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 939
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 940
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 941
    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 942
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 943
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 945
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 946
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 953
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 954
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 955
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 956
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 15

    .prologue
    .line 737
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v11, :cond_0

    const-string v11, "showing"

    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " low battery warning: level="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v13}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v11}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v1

    .line 748
    .local v1, bucket:I
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "SHOULD_SHUT_DOWN"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v11, v12, :cond_1

    const/4 v5, 0x1

    .line 749
    .local v5, isShutdownOn:Z
    :goto_1
    if-eqz v5, :cond_2

    .line 750
    const-string v11, "PowerUI"

    const-string v12, "Shutdown is ON"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_2
    return-void

    .line 737
    .end local v1           #bucket:I
    .end local v5           #isShutdownOn:Z
    :cond_0
    const-string v11, "updating"

    goto :goto_0

    .line 748
    .restart local v1       #bucket:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 754
    .restart local v5       #isShutdownOn:Z
    :cond_2
    iget-boolean v11, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v11, :cond_3

    const/4 v11, -0x2

    if-eq v11, v1, :cond_3

    .line 755
    const-string v11, "PowerUI"

    const-string v12, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 759
    :cond_3
    iget-boolean v11, p0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    if-eqz v11, :cond_4

    .line 760
    const-string v11, "PowerUI"

    const-string v12, "cover camera is running so don\'t show Low battery warning"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 764
    :cond_4
    const/4 v11, -0x2

    if-ne v11, v1, :cond_5

    .line 765
    iget-object v11, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0131

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 778
    .local v9, title:Ljava/lang/CharSequence;
    :goto_3
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v11, v12, :cond_6

    .line 779
    iget-object v11, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0133

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, levelText:Ljava/lang/CharSequence;
    :goto_4
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 801
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 864
    :goto_5
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 866
    iget-object v11, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 867
    .local v8, powerManager:Landroid/os/PowerManager;
    if-nez v8, :cond_a

    .line 868
    const-string v11, "PowerUI"

    const-string v12, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 767
    .end local v6           #levelText:Ljava/lang/CharSequence;
    .end local v8           #powerManager:Landroid/os/PowerManager;
    .end local v9           #title:Ljava/lang/CharSequence;
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0130

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 781
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0132

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #levelText:Ljava/lang/CharSequence;
    goto :goto_4

    .line 806
    :cond_7
    const/4 v11, 0x2

    iget v12, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v11, v12, :cond_9

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v12, "GT-P6800"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 807
    const v3, 0x7f020001

    .line 812
    .local v3, imageId:I
    :goto_6
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const v12, 0x7f040002

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 814
    .local v10, v:Landroid/view/View;
    const v11, 0x7f070007

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 816
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    const v11, 0x7f070008

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 827
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 828
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 829
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 830
    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 832
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v4, intent:Landroid/content/Intent;
    const/high16 v11, 0x5880

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    iget-object v11, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 838
    const v11, 0x7f0a001f

    new-instance v12, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v12, p0, v4}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 848
    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 849
    .local v2, d:Landroid/app/AlertDialog;
    new-instance v11, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v11, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 857
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d9

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 858
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 860
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 861
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 809
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #d:Landroid/app/AlertDialog;
    .end local v3           #imageId:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v10           #v:Landroid/view/View;
    :cond_9
    const/high16 v3, 0x7f02

    .restart local v3       #imageId:I
    goto/16 :goto_6

    .line 871
    .end local v3           #imageId:I
    .restart local v8       #powerManager:Landroid/os/PowerManager;
    :cond_a
    const v11, 0x10000006

    const-string v12, "PowerUI"

    invoke-virtual {v8, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 873
    .local v7, lowBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v11, 0x3a98

    invoke-virtual {v7, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_2
.end method

.method showOverheatShutdownNotice()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1489
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1491
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1492
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_0
    move v2, v3

    .line 1489
    goto :goto_0

    .line 1496
    .restart local v2       #isShutdownOn:Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    .line 1497
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1501
    :cond_2
    const-string v4, "PowerUI"

    const-string v5, "showOverheatShutdownNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    .line 1505
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1506
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1507
    const v3, 0x7f0a014d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1508
    const v3, 0x7f0a014e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1509
    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/power/PowerUI$22;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$22;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1517
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1518
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$23;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$23;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1524
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1525
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1526
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    .line 1529
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showOverheatShutdownWarning()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1421
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SHOULD_SHUT_DOWN"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 1423
    .local v1, isShutdownOn:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1424
    const-string v2, "PowerUI"

    const-string v3, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :goto_1
    return-void

    .end local v1           #isShutdownOn:Z
    :cond_0
    move v1, v2

    .line 1421
    goto :goto_0

    .line 1428
    .restart local v1       #isShutdownOn:Z
    :cond_1
    const-string v3, "PowerUI"

    const-string v4, "showOverheatShutdownWarning()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissOverheatShutdownNotice()V

    .line 1432
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_2

    .line 1433
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1434
    .local v0, d:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1435
    const v2, 0x7f0a014a

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 1436
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a014b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1437
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a014c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/power/PowerUI$18;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$18;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1444
    new-instance v2, Lcom/android/systemui/power/PowerUI$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$19;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1449
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1450
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1451
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 1454
    .end local v0           #d:Landroid/app/ProgressDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showPowersavingmodeNotice()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1301
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1303
    .local v3, isShutdownOn:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1304
    const-string v4, "PowerUI"

    const-string v5, "don\'t show Power saving mode notice while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :goto_1
    return-void

    .end local v3           #isShutdownOn:Z
    :cond_0
    move v3, v4

    .line 1301
    goto :goto_0

    .line 1308
    .restart local v3       #isShutdownOn:Z
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_2

    .line 1309
    const-string v4, "PowerUI"

    const-string v5, "FTA Mode is ON so don\'t show Power saving mode notice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1313
    :cond_2
    const-string v5, "PowerUI"

    const-string v6, "showPowersavingmodeNotice()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_4

    .line 1317
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1318
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1319
    const v4, 0x7f0a0126

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1320
    const v4, 0x7f0a0125

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1322
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1323
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.settings.PSM_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1326
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1327
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/power/PowerUI$14;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/power/PowerUI$14;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1337
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1338
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$15;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1344
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1345
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1346
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    .line 1349
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showWaterDamageWarning()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1359
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v4, v3, :cond_1

    move v1, v4

    .line 1360
    .local v1, isShutdownOn:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1361
    const-string v3, "PowerUI"

    const-string v4, "Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_0
    :goto_1
    return-void

    .end local v1           #isShutdownOn:Z
    :cond_1
    move v1, v5

    .line 1359
    goto :goto_0

    .line 1365
    .restart local v1       #isShutdownOn:Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v3, :cond_3

    .line 1366
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1370
    :cond_3
    const-string v3, "PowerUI"

    const-string v6, "showWaterDamageWarning()"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    if-nez v3, :cond_0

    .line 1373
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const v6, 0x7f04002e

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1374
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0700c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageTextView:Landroid/widget/TextView;

    .line 1376
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageTextView:Landroid/widget/TextView;

    const v6, 0x7f0a0149

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1378
    new-instance v0, Lcom/android/systemui/power/PowerUI$16;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/power/PowerUI$16;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Context;)V

    .line 1390
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1391
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1392
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1393
    new-instance v3, Lcom/android/systemui/power/PowerUI$17;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$17;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1400
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1401
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 1403
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1404
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1406
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1407
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1408
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    goto/16 :goto_1
.end method

.method showWirelessChargingNotice(I)V
    .locals 8
    .parameter "messageId"

    .prologue
    .line 1039
    const v4, 0x7f0a013e

    if-ne v4, p1, :cond_1

    .line 1040
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0a013c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1045
    .local v3, title:Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, text:Ljava/lang/CharSequence;
    const v4, 0x7f0a013d

    if-ne v4, p1, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v4, :cond_0

    .line 1048
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0140

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1051
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 1052
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1053
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1086
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1088
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 1089
    :goto_2
    return-void

    .line 1042
    .end local v2           #text:Ljava/lang/CharSequence;
    .end local v3           #title:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0a013b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #title:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1056
    .restart local v2       #text:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    .line 1057
    const-string v4, "PowerUI"

    const-string v5, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1061
    :cond_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1062
    const-string v4, "PowerUI"

    const-string v5, "Gate tool is running so don\'t show wireless charging popup"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1067
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1068
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1069
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1070
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1072
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1073
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1081
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1082
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1083
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public start()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 245
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 247
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v8

    .line 249
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v7

    .line 252
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 253
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 256
    const/16 v4, 0x2bc

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    .line 257
    const/16 v4, 0x46

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    .line 258
    const/16 v4, 0x2b2

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    .line 259
    const/16 v4, 0x45

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    .line 260
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    .line 262
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 263
    .local v3, powerManager:Landroid/os/PowerManager;
    if-nez v3, :cond_4

    .line 264
    const-string v4, "PowerUI"

    const-string v5, "start : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_1
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, characteristics:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 274
    iput v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 279
    :goto_2
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v4, :cond_6

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "GT-P6800"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 280
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x103012b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    .line 281
    const-string v4, "PowerUI"

    const-string v5, "White theme"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.spen_usp"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    .line 288
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : S Pen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v4, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 291
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 295
    :goto_4
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : VZW customer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v4, "ATT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 298
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    .line 302
    :goto_5
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : ATT customer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hlte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ha3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    :cond_0
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    .line 308
    :cond_1
    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string v5, "PowerUI"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 309
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 312
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v4, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v4, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v4, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v4, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v4, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    if-eqz v4, :cond_2

    .line 325
    const-string v4, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    return-void

    .line 253
    .end local v0           #characteristics:Ljava/lang/String;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #powerManager:Landroid/os/PowerManager;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    goto/16 :goto_0

    .line 266
    .restart local v3       #powerManager:Landroid/os/PowerManager;
    :cond_4
    const/4 v4, 0x6

    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    .line 268
    const v4, 0x3000000a

    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    .line 276
    .restart local v0       #characteristics:Ljava/lang/String;
    :cond_5
    iput v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_2

    .line 283
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    .line 284
    const-string v4, "PowerUI"

    const-string v5, "Dark theme"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 293
    :cond_7
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    goto/16 :goto_4

    .line 300
    :cond_8
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    goto/16 :goto_5
.end method

.method turnOnScreen()V
    .locals 5

    .prologue
    .line 1775
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1776
    .local v1, powerManager:Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1777
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :goto_0
    return-void

    .line 1782
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, exception:Landroid/os/RemoteException;
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateCoverLowBatteryWarning(Z)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 877
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040003

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 878
    .local v1, remoteViews:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    .local v0, coverIntent:Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 880
    const-string v2, "type"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 882
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    return-void
.end method
