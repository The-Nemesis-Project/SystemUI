.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# static fields
.field static final ABNORMAL_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charging"

.field static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_WARNING:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_WARNING"

.field static final ACTION_POWERSAVINGMODE_CHANGED:Ljava/lang/String; = "android.settings.POWERSAVING_CHANGED"

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

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final POWERSAVINGMODE_AUTO_THRESHOLD:I = 0x14

.field static final PRODUCT_DEV:I = 0x0

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

.field mPlugType:I

.field mPowersavingmodeDialog:Landroid/app/AlertDialog;

.field mSPen:Z

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

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 155
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 156
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 157
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 158
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 159
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 160
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 161
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 162
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 163
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 168
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 170
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    .line 171
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    .line 172
    const/16 v0, 0x2b2

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    .line 173
    const/16 v0, 0x45

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    .line 174
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    .line 175
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 208
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    .line 312
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 921
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    .line 986
    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    .line 1139
    new-instance v0, Lcom/android/systemui/power/PowerUI$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    .line 1398
    new-instance v0, Lcom/android/systemui/power/PowerUI$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$18;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 297
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 298
    const/4 v2, 0x1

    .line 306
    :cond_0
    :goto_0
    return v2

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 304
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 306
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 304
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 309
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final hideFullBattery()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidefullbatt"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hideLowBattery()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidelowbatt"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method cancelAbnormalChargingNotification()V
    .locals 3

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1451
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1455
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFaceDetectionFailureNotification()V
    .locals 3

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1389
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1392
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1394
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1396
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1348
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 1352
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissAbnormalChargingWarning()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 996
    :cond_0
    return-void
.end method

.method dismissBatterySwellingRecoveryNotice()V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1149
    :cond_0
    return-void
.end method

.method dismissBatterySwellingWarning()V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1095
    return-void
.end method

.method dismissChargingInterruptionWarning()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 862
    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 830
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 655
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

    .line 656
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 658
    :cond_0
    return-void
.end method

.method dismissPowersavingmodeNotice()V
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1193
    :cond_0
    return-void
.end method

.method dismissWaterDamageWarning()V
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1251
    :cond_0
    return-void
.end method

.method dismissWirelessChargingNotice()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 931
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1563
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1565
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    const-string v0, "PreventSWBatterySwelling: false"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    return-void

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method notifyAbnormalChargingNotification(I)V
    .locals 9
    .parameter "messageId"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0c013b

    .line 1408
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1410
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 1411
    const-string v5, "PowerUI"

    const-string v6, "notifyAbnormalChargingNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :goto_0
    return-void

    .line 1417
    :cond_0
    if-ne v7, p1, :cond_2

    .line 1418
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0138

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1419
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1425
    .local v3, text:Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 1426
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1427
    if-ne v7, p1, :cond_3

    .line 1428
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f0200b4

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1432
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, -0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 1433
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1434
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1435
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1438
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1439
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1441
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1443
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1421
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0135

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1422
    .restart local v4       #title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0137

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1430
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f020242

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_2
.end method

.method notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0c013e

    const/4 v8, 0x0

    .line 1355
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 1356
    const-string v5, "PowerUI"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    return-void

    .line 1360
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1362
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 1363
    const-string v5, "PowerUI"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1367
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0122

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1368
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1370
    .local v3, text:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 1371
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1372
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f02018b

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1373
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1374
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1377
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1378
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1380
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1382
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    invoke-virtual {v1, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1384
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

    .line 1308
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->hideFullBattery()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1310
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_1

    .line 1311
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :goto_0
    return-void

    .line 1315
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0122

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1316
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0123

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1318
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v7, :cond_2

    .line 1319
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 1320
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v8, 0x7f0200cd

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 1321
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 1322
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 1323
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1326
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1327
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1329
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1331
    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1333
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1334
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_3

    .line 1335
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1338
    :cond_3
    const v7, 0x10000006

    const-string v8, "PowerUI"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1340
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

    .line 1458
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1461
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1462
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1463
    .local v1, audioMode:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    if-eq v7, v1, :cond_0

    const/4 v7, 0x3

    if-eq v7, v1, :cond_0

    .line 1464
    const-string v7, "PowerUI"

    const-string v8, "recording so doesn\'t play sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    .end local v1           #audioMode:I
    :goto_0
    return-void

    .line 1469
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

    .line 1471
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_1

    .line 1472
    const-string v7, "PowerUI"

    const-string v8, "playSound : NotificationPlayer is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v7, Lcom/android/systemui/media/NotificationPlayer;

    const-string v8, "PowerUI"

    invoke-direct {v7, v8}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1475
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_1

    .line 1476
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new NotificationPlayer"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1482
    :cond_1
    if-eqz v0, :cond_3

    .line 1483
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1488
    .local v4, ringerMode:I
    :goto_1
    if-ne v11, v4, :cond_2

    if-ne v10, p1, :cond_2

    .line 1489
    const/4 v4, 0x1

    .line 1493
    :cond_2
    if-ne v11, v4, :cond_4

    .line 1495
    packed-switch p1, :pswitch_data_0

    .line 1509
    :try_start_0
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1513
    .local v5, soundUri:Landroid/net/Uri;
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1514
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_NORMAL"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1543
    .end local v5           #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1544
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

    goto :goto_0

    .line 1485
    .end local v2           #exception:Ljava/lang/Exception;
    .end local v4           #ringerMode:I
    :cond_3
    const/4 v4, 0x2

    .restart local v4       #ringerMode:I
    goto :goto_1

    .line 1497
    :pswitch_0
    :try_start_1
    const-string v7, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1498
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1500
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

    .line 1501
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1503
    .end local v5           #soundUri:Landroid/net/Uri;
    :pswitch_2
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1504
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1506
    .end local v5           #soundUri:Landroid/net/Uri;
    :pswitch_3
    const-string v7, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1507
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1515
    .end local v5           #soundUri:Landroid/net/Uri;
    :cond_4
    if-ne v10, v4, :cond_6

    .line 1517
    packed-switch p1, :pswitch_data_1

    .line 1527
    const/16 v3, 0xb

    .line 1531
    .local v3, hapticFeedback:I
    :goto_3
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    .line 1532
    .local v6, systemVibrator:Landroid/os/SystemVibrator;
    if-eqz v6, :cond_5

    .line 1533
    invoke-virtual {v6, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    .line 1537
    :goto_4
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_VIBRATE"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1519
    .end local v3           #hapticFeedback:I
    .end local v6           #systemVibrator:Landroid/os/SystemVibrator;
    :pswitch_4
    const/16 v3, 0xa

    .line 1520
    .restart local v3       #hapticFeedback:I
    goto :goto_3

    .line 1524
    .end local v3           #hapticFeedback:I
    :pswitch_5
    const/16 v3, 0xb

    .line 1525
    .restart local v3       #hapticFeedback:I
    goto :goto_3

    .line 1535
    .restart local v6       #systemVibrator:Landroid/os/SystemVibrator;
    :cond_5
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new SystemVibrator"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1538
    .end local v3           #hapticFeedback:I
    .end local v6           #systemVibrator:Landroid/os/SystemVibrator;
    :cond_6
    if-nez v4, :cond_7

    .line 1539
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_SILENT"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1541
    :cond_7
    const-string v7, "PowerUI"

    const-string v8, "unknown RINGER_MODE"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1517
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method showAbnormalChargingWarning(I)V
    .locals 12
    .parameter "messageId"

    .prologue
    const v11, 0x7f0c0139

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 999
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "SHOULD_SHUT_DOWN"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v4, v8

    .line 1001
    .local v4, isShutdownOn:Z
    :goto_0
    if-eqz v4, :cond_1

    .line 1002
    const-string v7, "PowerUI"

    const-string v8, "don\'t show Abnormal charging warning while Shutdown is ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :goto_1
    return-void

    .end local v4           #isShutdownOn:Z
    :cond_0
    move v4, v7

    .line 999
    goto :goto_0

    .line 1006
    .restart local v4       #isShutdownOn:Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v9, :cond_2

    .line 1007
    const-string v7, "PowerUI"

    const-string v8, "FTA Mode is ON so don\'t show Abnormal charging warning"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1011
    :cond_2
    const-string v9, "PowerUI"

    const-string v10, "showAbnormalChargingWarning()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 1017
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "com.android.systemui.power_abnormal_charging"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1018
    .local v0, abnormalChargeSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_5

    .line 1019
    if-ne v11, p1, :cond_4

    .line 1020
    const-string v9, "DoNotShowSlowChargingWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1021
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1023
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

    .line 1024
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show while Dock connects"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1028
    :cond_4
    const-string v9, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1029
    const-string v7, "PowerUI"

    const-string v8, "Incompatible charger warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1035
    :cond_5
    if-ne v11, p1, :cond_7

    .line 1036
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0138

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1038
    .local v5, title:Ljava/lang/CharSequence;
    const/4 v7, 0x2

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v7, v9, :cond_6

    .line 1039
    const p1, 0x7f0c013a

    .line 1045
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 1046
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1042
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0135

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1049
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const/high16 v9, 0x7f04

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1050
    .local v6, v:Landroid/view/View;
    const v7, 0x7f090007

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    .line 1052
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    move v3, p1

    .line 1057
    .local v3, finalMessageId:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1058
    .local v1, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1059
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1060
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1061
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v8, p0, v6, v0, v3}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1076
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1077
    .local v2, d:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1083
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 1084
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1085
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method showBatterySwellingRecoveryNotice()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1152
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1154
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1155
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_0
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_1
    move v2, v3

    .line 1152
    goto :goto_0

    .line 1159
    .restart local v2       #isShutdownOn:Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    .line 1160
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1164
    :cond_3
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingRecoveryNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 1168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1170
    const v3, 0x7f0c012d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1171
    const v3, 0x7f0c012e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1172
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1175
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$13;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1181
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1182
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1183
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    .line 1185
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showBatterySwellingWarning()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1098
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1100
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1101
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_0
    move v2, v3

    .line 1098
    goto :goto_0

    .line 1105
    .restart local v2       #isShutdownOn:Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_2

    .line 1106
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1110
    :cond_2
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingWarning()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    .line 1114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1115
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1116
    const v3, 0x7f0c012b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1117
    const v3, 0x7f0c012c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1118
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1121
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1127
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1128
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1129
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    .line 1131
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 1134
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 1136
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

    .line 865
    const-string v7, "PowerUI"

    const-string v8, "showChargingInterruptionWarning()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SHOULD_SHUT_DOWN"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 869
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 870
    const-string v6, "PowerUI"

    const-string v7, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_0
    move v2, v6

    .line 867
    goto :goto_0

    .line 875
    .restart local v2       #isShutdownOn:Z
    :cond_1
    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v9, v7, :cond_2

    .line 876
    const v3, 0x7f0c0120

    .line 887
    .local v3, messageId:I
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 888
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 889
    const v6, 0x7f0c011e

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 890
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 891
    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 893
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 894
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 904
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 905
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 906
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    .line 908
    invoke-virtual {p0, v9}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 910
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 911
    .local v5, powerManager:Landroid/os/PowerManager;
    if-nez v5, :cond_5

    .line 912
    const-string v6, "PowerUI"

    const-string v7, "showChargingInterruptionWarning : fail to get PowerManager reference"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 877
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v3           #messageId:I
    .end local v5           #powerManager:Landroid/os/PowerManager;
    :cond_2
    const/4 v7, 0x7

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v8, :cond_3

    .line 878
    const v3, 0x7f0c0121

    .restart local v3       #messageId:I
    goto :goto_2

    .line 879
    .end local v3           #messageId:I
    :cond_3
    const/4 v7, 0x6

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v8, :cond_4

    .line 880
    const v3, 0x7f0c011f

    .restart local v3       #messageId:I
    goto :goto_2

    .line 882
    .end local v3           #messageId:I
    :cond_4
    const-string v6, "PowerUI"

    const-string v7, "status is NotCharging but health is wrong value"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 915
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v1       #d:Landroid/app/AlertDialog;
    .restart local v3       #messageId:I
    .restart local v5       #powerManager:Landroid/os/PowerManager;
    :cond_5
    const v6, 0x10000006

    const-string v7, "PowerUI"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 917
    .local v4, notChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 918
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 833
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 837
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 838
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 839
    const v2, 0x7f0c001d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 840
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 841
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 843
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 844
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 851
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 852
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 853
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 854
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 19

    .prologue
    .line 661
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/power/PowerUI;->hideLowBattery()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v16, "PowerUI"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v15, :cond_1

    const-string v15, "showing"

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " low battery warning: level="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " ["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v3

    .line 672
    .local v3, bucket:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "SHOULD_SHUT_DOWN"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v8, 0x1

    .line 673
    .local v8, isShutdownOn:Z
    :goto_1
    if-eqz v8, :cond_3

    .line 674
    const-string v15, "PowerUI"

    const-string v16, "Shutdown is ON"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_2
    return-void

    .line 661
    .end local v3           #bucket:I
    .end local v8           #isShutdownOn:Z
    :cond_1
    const-string v15, "updating"

    goto :goto_0

    .line 672
    .restart local v3       #bucket:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 678
    .restart local v8       #isShutdownOn:Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v15, :cond_4

    const/4 v15, -0x2

    if-eq v15, v3, :cond_4

    .line 679
    const-string v15, "PowerUI"

    const-string v16, "FTA Mode is ON and Not critical Low battery"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 683
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    if-eqz v15, :cond_5

    .line 684
    const-string v15, "PowerUI"

    const-string v16, "cover camera is running so don\'t show Low battery warning"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 688
    :cond_5
    const/4 v15, -0x2

    if-ne v15, v3, :cond_6

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0125

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 694
    .local v13, title:Ljava/lang/CharSequence;
    :goto_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0127

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 723
    .local v9, levelText:Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v15, :cond_8

    .line 724
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 781
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 782
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v15, "low_battery_sound"

    invoke-static {v4, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 783
    .local v12, soundPath:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v16, "power"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 786
    .local v11, powerManager:Landroid/os/PowerManager;
    if-nez v11, :cond_b

    .line 787
    const-string v15, "PowerUI"

    const-string v16, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 691
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v9           #levelText:Ljava/lang/CharSequence;
    .end local v11           #powerManager:Landroid/os/PowerManager;
    .end local v12           #soundPath:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0124

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 697
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0126

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #levelText:Ljava/lang/CharSequence;
    goto :goto_4

    .line 729
    :cond_8
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v16, "GT-P6800"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 730
    const v6, 0x7f020005

    .line 735
    .local v6, imageId:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const v16, 0x7f040003

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 736
    .local v14, v:Landroid/view/View;
    const v15, 0x7f09000d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    const v15, 0x7f09000e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 743
    .local v2, b:Landroid/app/AlertDialog$Builder;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 745
    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 746
    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 748
    const v15, 0x104000a

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v7, intent:Landroid/content/Intent;
    const/high16 v15, 0x5880

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 755
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 756
    const v15, 0x7f0c001e

    new-instance v16, Lcom/android/systemui/power/PowerUI$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 766
    :cond_9
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 767
    .local v5, d:Landroid/app/AlertDialog;
    new-instance v15, Lcom/android/systemui/power/PowerUI$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 774
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d9

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    .line 775
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 777
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 778
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 732
    .end local v2           #b:Landroid/app/AlertDialog$Builder;
    .end local v5           #d:Landroid/app/AlertDialog;
    .end local v6           #imageId:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v14           #v:Landroid/view/View;
    :cond_a
    const v6, 0x7f020004

    .restart local v6       #imageId:I
    goto/16 :goto_6

    .line 790
    .end local v6           #imageId:I
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v11       #powerManager:Landroid/os/PowerManager;
    .restart local v12       #soundPath:Ljava/lang/String;
    :cond_b
    const v15, 0x10000006

    const-string v16, "PowerUI"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 792
    .local v10, lowBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v15, 0x3a98

    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_2
.end method

.method showPowersavingmodeNotice()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1196
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1198
    .local v3, isShutdownOn:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1199
    const-string v4, "PowerUI"

    const-string v5, "don\'t show Power saving mode notice while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :goto_1
    return-void

    .end local v3           #isShutdownOn:Z
    :cond_0
    move v3, v4

    .line 1196
    goto :goto_0

    .line 1203
    .restart local v3       #isShutdownOn:Z
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_2

    .line 1204
    const-string v4, "PowerUI"

    const-string v5, "FTA Mode is ON so don\'t show Power saving mode notice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1208
    :cond_2
    const-string v5, "PowerUI"

    const-string v6, "showPowersavingmodeNotice()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_4

    .line 1212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1213
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1214
    const v4, 0x7f0c011a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1215
    const v4, 0x7f0c0119

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1217
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1218
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.settings.PSM_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1221
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1222
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/power/PowerUI$14;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/power/PowerUI$14;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1232
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1233
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$15;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1239
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1240
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1241
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    .line 1244
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

    .line 1254
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v4, v3, :cond_1

    move v1, v4

    .line 1255
    .local v1, isShutdownOn:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1256
    const-string v3, "PowerUI"

    const-string v4, "Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    :goto_1
    return-void

    .end local v1           #isShutdownOn:Z
    :cond_1
    move v1, v5

    .line 1254
    goto :goto_0

    .line 1260
    .restart local v1       #isShutdownOn:Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v3, :cond_3

    .line 1261
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1265
    :cond_3
    const-string v3, "PowerUI"

    const-string v6, "showWaterDamageWarning()"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    if-nez v3, :cond_0

    .line 1268
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const v6, 0x7f040050

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1269
    .local v2, v:Landroid/view/View;
    const v3, 0x7f090133

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageTextView:Landroid/widget/TextView;

    .line 1271
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageTextView:Landroid/widget/TextView;

    const v6, 0x7f0c013d

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1273
    new-instance v0, Lcom/android/systemui/power/PowerUI$16;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/power/PowerUI$16;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Context;)V

    .line 1285
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1286
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1287
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1288
    new-instance v3, Lcom/android/systemui/power/PowerUI$17;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$17;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1295
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1296
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1297
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 1298
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1299
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1301
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1302
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1303
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    goto/16 :goto_1
.end method

.method showWirelessChargingNotice(I)V
    .locals 9
    .parameter "messageId"

    .prologue
    .line 937
    const v5, 0x7f0c0132

    if-ne v5, p1, :cond_1

    .line 938
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0130

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 943
    .local v4, title:Ljava/lang/CharSequence;
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 945
    .local v3, text:Ljava/lang/CharSequence;
    const v5, 0x7f0c0131

    if-ne v5, p1, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v5, :cond_0

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0134

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, spenWarningText:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 951
    .end local v2           #spenWarningText:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 952
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 953
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 981
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 983
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 984
    :goto_2
    return-void

    .line 940
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c012f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #title:Ljava/lang/CharSequence;
    goto :goto_0

    .line 956
    .restart local v3       #text:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_3

    .line 957
    const-string v5, "PowerUI"

    const-string v6, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 962
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 963
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 964
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 965
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 967
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 968
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 976
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 977
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 978
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public start()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 213
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 215
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v8

    .line 217
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v7

    .line 220
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 221
    .local v0, batterySwellingValues:[I
    aget v4, v0, v8

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    .line 222
    aget v4, v0, v7

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    .line 223
    aget v4, v0, v9

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    .line 224
    const/4 v4, 0x3

    aget v4, v0, v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    .line 225
    const/4 v4, 0x4

    aget v4, v0, v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    .line 227
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 228
    .local v3, powerManager:Landroid/os/PowerManager;
    if-nez v3, :cond_0

    .line 229
    const-string v4, "PowerUI"

    const-string v5, "start : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, characteristics:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "tablet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    iput v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 244
    :goto_1
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v4, :cond_2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "GT-P6800"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 245
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x103012b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    .line 246
    const-string v4, "PowerUI"

    const-string v5, "White theme"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.spen_usp"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    .line 253
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

    .line 255
    const-string v4, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 260
    :goto_3
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

    .line 262
    const-string v4, "ATT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    .line 267
    :goto_4
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

    .line 269
    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string v5, "PowerUI"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 270
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 273
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v4, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v4, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v4, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v4, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v4, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 284
    return-void

    .line 231
    .end local v1           #characteristics:Ljava/lang/String;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v4, 0x6

    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 232
    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    const v4, 0x3000000a

    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    .line 234
    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 241
    .restart local v1       #characteristics:Ljava/lang/String;
    :cond_1
    iput v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_1

    .line 248
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    .line 249
    const-string v4, "PowerUI"

    const-string v5, "Dark theme"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 258
    :cond_3
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    goto/16 :goto_3

    .line 265
    :cond_4
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    goto/16 :goto_4
.end method

.method turnOnScreen()V
    .locals 5

    .prologue
    .line 1549
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1550
    .local v1, powerManager:Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1551
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :goto_0
    return-void

    .line 1556
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
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
    .line 796
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/power/PowerUI;->hideLowBattery()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040004

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 797
    .local v1, remoteViews:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, coverIntent:Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 799
    const-string v2, "type"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 801
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 802
    :goto_0
    return-void
.end method
