.class public Lcom/android/systemui/cooldown/OverheatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverheatReceiver.java"


# static fields
.field public static final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CHECK_SIOP_LEVEL"

.field public static final ACTION_PROCESS_SIOP:Ljava/lang/String; = "android.intent.action.PROCESS_SIOP"

.field static final DEBUG:Z = true

.field private static final MESSAGE_ID:I = 0x1c379

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "OverheatReceiver"

.field private static final THIRTY_SECONDS:J = 0x7530L


# instance fields
.field private Compare_cool_level:I

.field private final NOTI_END_LEVEL:I

.field private final NOTI_END_LEVEL_GLOBAL:I

.field private final NOTI_LEVEL:I

.field private final NOTI_LEVEL_GLOBAL_1:I

.field private final NOTI_LEVEL_GLOBAL_2:I

.field isVZW:Z

.field final mSalesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_LEVEL:I

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_END_LEVEL:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_END_LEVEL_GLOBAL:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_LEVEL_GLOBAL_1:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_LEVEL_GLOBAL_2:I

    .line 45
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->mSalesCode:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->mSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    const-string v12, "OverheatReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive() getAction : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez p1, :cond_1

    .line 56
    const-string v12, "OverheatReceiver"

    const-string v13, "onReceive(): context is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 62
    :try_start_0
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 64
    .local v5, notiManager:Landroid/app/NotificationManager;
    const-string v12, "check_siop_level_level"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    .line 65
    const-string v12, "OverheatReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "into Cooling +"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v12, 0x0

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.PROCESS_SIOP"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 71
    .local v7, overheatIntent:Landroid/app/PendingIntent;
    const-string v12, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    move-object v0, v12

    check-cast v0, Landroid/app/AlarmManager;

    move-object v1, v0

    .line 75
    .local v1, alarmManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    if-ltz v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    const/4 v13, 0x6

    if-lt v12, v13, :cond_2

    .line 76
    const-string v12, "OverheatReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "into level condition 6up +"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v12, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x7530

    add-long/2addr v13, v15

    invoke-virtual {v1, v12, v13, v14, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 85
    .end local v1           #alarmManager:Landroid/app/AlarmManager;
    .end local v5           #notiManager:Landroid/app/NotificationManager;
    .end local v7           #overheatIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v3

    .line 86
    .local v3, e5:Ljava/lang/Exception;
    const-string v12, "OverheatReceiver"

    const-string v13, "Failed try statement"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 79
    .end local v3           #e5:Ljava/lang/Exception;
    .restart local v1       #alarmManager:Landroid/app/AlarmManager;
    .restart local v5       #notiManager:Landroid/app/NotificationManager;
    .restart local v7       #overheatIntent:Landroid/app/PendingIntent;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    const/4 v13, 0x5

    if-gt v12, v13, :cond_0

    .line 80
    const v12, 0x1c379

    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 82
    const-string v12, "OverheatReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "into level condition 5 down -"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 88
    .end local v1           #alarmManager:Landroid/app/AlarmManager;
    .end local v5           #notiManager:Landroid/app/NotificationManager;
    .end local v7           #overheatIntent:Landroid/app/PendingIntent;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    if-nez v12, :cond_4

    .line 91
    const v11, 0x7f0a0196

    .line 92
    .local v11, tickerTitle:I
    const v9, 0x7f0a0191

    .line 93
    .local v9, tickerText:I
    const v10, 0x7f0a0197

    .line 95
    .local v10, tickerText2:I
    :try_start_2
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 96
    .restart local v5       #notiManager:Landroid/app/NotificationManager;
    const-string v12, "battery_overheat_level"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    .line 97
    const-string v12, "OverheatReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "into Cooling +"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v2, coolingintent:Landroid/content/Intent;
    const-string v12, "com.android.systemui"

    const-string v13, "com.android.systemui.cooldown.Overheat"

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 104
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 106
    .local v6, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    packed-switch v12, :pswitch_data_0

    .line 139
    const-string v12, "OverheatReceiver"

    const-string v13, "Ivalid level value"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 147
    .end local v2           #coolingintent:Landroid/content/Intent;
    .end local v5           #notiManager:Landroid/app/NotificationManager;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    :catch_1
    move-exception v3

    .line 148
    .restart local v3       #e5:Ljava/lang/Exception;
    const-string v12, "OverheatReceiver"

    const-string v13, "Failed try statement"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 109
    .end local v3           #e5:Ljava/lang/Exception;
    .restart local v2       #coolingintent:Landroid/content/Intent;
    .restart local v5       #notiManager:Landroid/app/NotificationManager;
    .restart local v6       #notification:Landroid/app/Notification;
    .restart local v8       #pendingIntent:Landroid/app/PendingIntent;
    :pswitch_0
    const v12, 0x1c379

    :try_start_3
    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 114
    :pswitch_1
    new-instance v6, Landroid/app/Notification;

    .end local v6           #notification:Landroid/app/Notification;
    const v12, 0x7f0200b9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 117
    .restart local v6       #notification:Landroid/app/Notification;
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v12, v13, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    const v12, 0x1c379

    invoke-virtual {v5, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 126
    :pswitch_2
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    new-instance v13, Landroid/app/Notification$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0200b9

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v6

    .line 134
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 135
    const v12, 0x1c379

    invoke-virtual {v5, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 153
    .end local v2           #coolingintent:Landroid/content/Intent;
    .end local v5           #notiManager:Landroid/app/NotificationManager;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #tickerText:I
    .end local v10           #tickerText2:I
    .end local v11           #tickerTitle:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.PROCESS_SIOP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 155
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 157
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 159
    .restart local v5       #notiManager:Landroid/app/NotificationManager;
    const v11, 0x7f0a0198

    .line 160
    .restart local v11       #tickerTitle:I
    const v9, 0x7f0a019a

    .line 163
    .restart local v9       #tickerText:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 164
    .restart local v2       #coolingintent:Landroid/content/Intent;
    const-string v12, "com.android.systemui"

    const-string v13, "com.android.systemui.cooldown.Overheat"

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 169
    .restart local v8       #pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v12, 0x7f0200b9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 172
    .restart local v6       #notification:Landroid/app/Notification;
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v12, v13, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 177
    const v12, 0x1c379

    invoke-virtual {v5, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 203
    .end local v2           #coolingintent:Landroid/content/Intent;
    .end local v5           #notiManager:Landroid/app/NotificationManager;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #tickerText:I
    .end local v11           #tickerTitle:I
    :catch_2
    move-exception v4

    .line 204
    .local v4, e6:Ljava/lang/Exception;
    const-string v12, "OverheatReceiver"

    const-string v13, "Failed try statement"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    .end local v4           #e6:Ljava/lang/Exception;
    :cond_5
    :try_start_5
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 183
    .restart local v5       #notiManager:Landroid/app/NotificationManager;
    const v11, 0x7f0a018f

    .line 184
    .restart local v11       #tickerTitle:I
    const v9, 0x7f0a0191

    .line 187
    .restart local v9       #tickerText:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 188
    .restart local v2       #coolingintent:Landroid/content/Intent;
    const-string v12, "com.android.systemui"

    const-string v13, "com.android.systemui.cooldown.Overheat"

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 193
    .restart local v8       #pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v12, 0x7f0200b9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 196
    .restart local v6       #notification:Landroid/app/Notification;
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v12, v13, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 201
    const v12, 0x1c379

    invoke-virtual {v5, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
