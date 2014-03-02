.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationController$1;,
        Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;,
        Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_STOP_GPS_TONE:I = 0x40

.field private static final GPS_NOTIFICATION_ID:I = 0x3d8d7

.field private static final GPS_NOTI_STATUS:Ljava/lang/String; = "gps_notification_sounds"

.field private static final TAG:Ljava/lang/String; = "StatusBar.LocationController"


# instance fields
.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mHandler:Landroid/os/Handler;

.field private mNotificationService:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v2, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/LocationController$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 93
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 95
    return-void
.end method

.method private GenerateBeep()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 103
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "StatusBar.LocationController"

    const-string v8, "GenerateBeep Method call"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, MIN_VOLUME_LEV:I
    const/4 v1, 0x7

    .line 107
    .local v1, MAX_VOLUME_LEV:I
    const/16 v3, 0xe

    .line 108
    .local v3, VOLUME_STEP:I
    const/16 v0, 0x64

    .line 109
    .local v0, MAX_VOLUME:I
    move v6, v0

    .line 111
    .local v6, mCurVol:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 112
    .local v4, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 113
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "StatusBar.LocationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenerateBeep: Volumei Level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    if-lt v6, v2, :cond_5

    if-gt v6, v1, :cond_5

    .line 116
    if-ne v6, v1, :cond_4

    .line 117
    move v6, v0

    .line 122
    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "StatusBar.LocationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenerateBeep: valid Volume:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    :goto_1
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v10, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 130
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v7, :cond_3

    .line 131
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 132
    .local v5, m:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/16 v8, 0x1c

    invoke-virtual {v7, v8}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 133
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    .end local v5           #m:Landroid/os/Message;
    :cond_3
    return-void

    .line 119
    :cond_4
    mul-int/2addr v6, v3

    goto :goto_0

    .line 124
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_6

    const-string v7, "StatusBar.LocationController"

    const-string v8, "Error getting current volume: Setting volume as max volume"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    move v6, v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/LocationController;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, action:Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 148
    .local v14, enabled:Z
    const/16 v20, 0x0

    .line 149
    .local v20, valueFromPrefs:Z
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_0

    .line 154
    :cond_0
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v14, :cond_3

    .line 156
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_1

    .line 159
    :cond_1
    const v16, 0x1080825

    .line 160
    .local v16, iconId:I
    const v19, 0x7f0c00aa

    .line 161
    .local v19, textResId:I
    const/16 v21, 0x1

    .line 192
    .local v21, visible:Z
    :goto_0
    if-eqz v21, :cond_7

    .line 193
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, gpsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 198
    .local v17, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 200
    .local v18, text:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 208
    .local v9, n:Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 209
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 211
    const/4 v1, 0x1

    iput v1, v9, Landroid/app/Notification;->priority:I

    .line 213
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 214
    .local v10, idOut:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x3d8d7

    const/4 v11, -0x1

    invoke-interface/range {v4 .. v11}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;

    .line 223
    .local v13, cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v13, v1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;->onLocationGpsStateChanged(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    .end local v3           #gpsIntent:Landroid/content/Intent;
    .end local v9           #n:Landroid/app/Notification;
    .end local v10           #idOut:[I
    .end local v13           #cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #pendingIntent:Landroid/app/PendingIntent;
    .end local v18           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 237
    :cond_2
    return-void

    .line 162
    .end local v16           #iconId:I
    .end local v19           #textResId:I
    .end local v21           #visible:Z
    :cond_3
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v14, :cond_5

    .line 164
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_4

    .line 167
    :cond_4
    const/16 v21, 0x0

    .line 168
    .restart local v21       #visible:Z
    const/16 v19, 0x0

    .restart local v19       #textResId:I
    move/from16 v16, v19

    .restart local v16       #iconId:I
    goto/16 :goto_0

    .line 171
    .end local v16           #iconId:I
    .end local v19           #textResId:I
    .end local v21           #visible:Z
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_6

    .line 174
    :cond_6
    const v16, 0x7f02011c

    .line 175
    .restart local v16       #iconId:I
    const v19, 0x7f0c00a9

    .line 176
    .restart local v19       #textResId:I
    const/16 v21, 0x1

    .restart local v21       #visible:Z
    goto/16 :goto_0

    .line 226
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x3d8d7

    const/4 v6, -0x1

    invoke-interface {v1, v2, v4, v5, v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;

    .line 231
    .restart local v13       #cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v13, v1, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;->onLocationGpsStateChanged(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
