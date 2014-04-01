.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    }
.end annotation


# static fields
.field private static final GPS_NOTIFICATION_ID:I = 0x3d8d7

.field public static final LOCATION_STATUS_ICON_ID:I = 0x7f020139

.field public static final LOCATION_STATUS_ICON_PLACEHOLDER:Ljava/lang/String; = "location"

.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private mNotificationService:Landroid/app/INotificationManager;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 88
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, p0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 96
    .local v7, nm:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 99
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 100
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 104
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->updateActiveLocationRequests()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->refreshViews()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->locationSettingsChanged()V

    return-void
.end method

.method private areActiveHighPowerLocationRequests()Z
    .locals 10

    .prologue
    .line 181
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 184
    .local v7, packages:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_2

    .line 185
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    .local v1, numPackages:I
    const/4 v5, 0x0

    .local v5, packageInd:I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 187
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 188
    .local v6, packageOp:Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, opEntries:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v2, :cond_1

    .line 190
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    .local v0, numOps:I
    const/4 v4, 0x0

    .local v4, opInd:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 192
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 195
    .local v3, opEntry:Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    .line 196
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    const/4 v8, 0x1

    .line 205
    .end local v0           #numOps:I
    .end local v1           #numPackages:I
    .end local v2           #opEntries:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3           #opEntry:Landroid/app/AppOpsManager$OpEntry;
    .end local v4           #opInd:I
    .end local v5           #packageInd:I
    .end local v6           #packageOp:Landroid/app/AppOpsManager$PackageOps;
    :goto_2
    return v8

    .line 191
    .restart local v0       #numOps:I
    .restart local v1       #numPackages:I
    .restart local v2       #opEntries:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v3       #opEntry:Landroid/app/AppOpsManager$OpEntry;
    .restart local v4       #opInd:I
    .restart local v5       #packageInd:I
    .restart local v6       #packageOp:Landroid/app/AppOpsManager$PackageOps;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 186
    .end local v0           #numOps:I
    .end local v3           #opEntry:Landroid/app/AppOpsManager$OpEntry;
    .end local v4           #opInd:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 205
    .end local v1           #numPackages:I
    .end local v2           #opEntries:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v5           #packageInd:I
    .end local v6           #packageOp:Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isUserLocationRestricted(I)Z
    .locals 3
    .parameter "userId"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 172
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_share_location"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private locationSettingsChanged()V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v2

    .line 229
    .local v2, isEnabled:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 230
    .local v0, cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_0

    .line 232
    .end local v0           #cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private refreshViews()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    .line 221
    .local v0, hadActiveLocationRequests:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    .line 222
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->refreshViews()V

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 162
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 164
    .local v0, mode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, action:Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 245
    .local v14, enabled:Z
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v14, :cond_1

    .line 250
    const v16, 0x108078e

    .line 251
    .local v16, iconId:I
    const v19, 0x7f0a00ae

    .line 252
    .local v19, textResId:I
    const/16 v20, 0x1

    .line 270
    .local v20, visible:Z
    :goto_0
    if-eqz v20, :cond_3

    .line 271
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v3, gpsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 276
    .local v17, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 278
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

    .line 286
    .local v9, n:Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 287
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 289
    const/4 v1, 0x1

    iput v1, v9, Landroid/app/Notification;->priority:I

    .line 291
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 292
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

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 301
    .local v13, cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    .end local v3           #gpsIntent:Landroid/content/Intent;
    .end local v9           #n:Landroid/app/Notification;
    .end local v10           #idOut:[I
    .end local v13           #cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #pendingIntent:Landroid/app/PendingIntent;
    .end local v18           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 316
    :cond_0
    return-void

    .line 253
    .end local v16           #iconId:I
    .end local v19           #textResId:I
    .end local v20           #visible:Z
    :cond_1
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v14, :cond_2

    .line 258
    const/16 v20, 0x0

    .line 259
    .restart local v20       #visible:Z
    const/16 v19, 0x0

    .restart local v19       #textResId:I
    move/from16 v16, v19

    .restart local v16       #iconId:I
    goto/16 :goto_0

    .line 265
    .end local v16           #iconId:I
    .end local v19           #textResId:I
    .end local v20           #visible:Z
    :cond_2
    const v16, 0x7f02013c

    .line 266
    .restart local v16       #iconId:I
    const v19, 0x7f0a00ad

    .line 267
    .restart local v19       #textResId:I
    const/16 v20, 0x1

    .restart local v20       #visible:Z
    goto/16 :goto_0

    .line 304
    :cond_3
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

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 309
    .restart local v13       #cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setLocationEnabled(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 141
    .local v1, currentUserId:I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->isUserLocationRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    :goto_0
    return v2

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const/4 v2, 0x3

    .line 151
    .local v2, mode:I
    :cond_1
    const-string v3, "location_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method
