.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, action:Ljava/lang/String;
    const-string v22, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v12, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 318
    .local v12, oldBatteryLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "level"

    const/16 v24, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v14, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 320
    .local v14, oldBatteryStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "status"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v11, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 323
    .local v11, oldBatteryHealth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "health"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v17, v0

    .line 326
    .local v17, oldPlugType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "plugged"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    move/from16 v16, v0

    .line 328
    .local v16, oldInvalidCharger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "invalid_charger"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v13, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 330
    .local v13, oldBatteryOnline:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "online"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 332
    .local v10, oldBatteryChargetype:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "charge_type"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "current_avg"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const-string v23, "temperature"

    const/16 v24, 0x14

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v22, v0

    if-eqz v22, :cond_12

    const/16 v20, 0x1

    .line 337
    .local v20, plugged:Z
    :goto_0
    if-eqz v17, :cond_13

    const/16 v18, 0x1

    .line 339
    .local v18, oldPlugged:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v0, v12}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v15

    .line 340
    .local v15, oldBucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v23, v0

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 384
    .local v4, bucket:I
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v22

    if-nez v22, :cond_0

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "INTENT_DEBUG"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    :cond_0
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "LOW_BATTERY_DUMP"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v22, v0

    sub-int v22, v12, v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v22, v0

    sub-int v22, v22, v12

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v0, v12, :cond_3

    :cond_2
    if-ge v4, v15, :cond_4

    const/16 v22, -0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_4

    .line 394
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "LOW_BATTERY_DUMP_COUNT"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 395
    .local v9, lowBatteryDumpCount:I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v9, v0, :cond_14

    .line 396
    const-string v22, "PowerUI"

    const-string v23, "Low battery dump"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    add-int/lit8 v9, v9, 0x1

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "LOW_BATTERY_DUMP_COUNT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    const-string v24, "com.android.systemui.power.action.LOW_BATTERY_WARNING"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    .end local v9           #lowBatteryDumpCount:I
    :cond_4
    :goto_2
    const/16 v22, 0x14

    move/from16 v0, v22

    if-gt v12, v0, :cond_5

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v0, v12, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v22, v0

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 407
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "psm_auto_turn_on"

    const/16 v25, 0x0

    const/16 v26, -0x2

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "psm_cpu_clock"

    const/16 v24, 0x0

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    const/4 v6, 0x1

    .line 409
    .local v6, isCpuChecked:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "psm_display"

    const/16 v24, 0x0

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    const/4 v7, 0x1

    .line 410
    .local v7, isDisplayChecked:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "psm_background_colour"

    const/16 v24, 0x0

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    const/4 v5, 0x1

    .line 411
    .local v5, isBackgroundChecked:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "psm_haptic_feedback"

    const/16 v24, 0x0

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    const/4 v8, 0x1

    .line 413
    .local v8, isHapticChecked:Z
    :goto_6
    if-nez v6, :cond_19

    if-nez v7, :cond_19

    if-nez v5, :cond_19

    if-nez v8, :cond_19

    .line 414
    const-string v22, "PowerUI"

    const-string v23, "All of Power saving mode field are not checked"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->showPowersavingmodeNotice()V

    .line 424
    .end local v5           #isBackgroundChecked:Z
    .end local v6           #isCpuChecked:Z
    .end local v7           #isDisplayChecked:Z
    .end local v8           #isHapticChecked:Z
    :cond_6
    :goto_7
    if-nez v20, :cond_1a

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1a

    if-gez v4, :cond_1a

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    .line 455
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v14, v0, :cond_a

    .line 456
    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    .line 462
    :cond_8
    :goto_9
    const/16 v22, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_22

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    if-nez v22, :cond_21

    .line 464
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "power"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PowerManager;

    .line 465
    .local v21, powerManager:Landroid/os/PowerManager;
    if-nez v21, :cond_20

    .line 466
    const-string v22, "PowerUI"

    const-string v23, "onReceive : fail to get PowerManager reference"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v21           #powerManager:Landroid/os/PowerManager;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->showChargingInterruptionWarning()V

    .line 491
    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v11, v0, :cond_c

    .line 492
    const/16 v22, 0x5

    move/from16 v0, v22

    if-eq v0, v11, :cond_b

    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 493
    :cond_b
    const-string v22, "PowerUI"

    const-string v23, "Overvoltage (recovered) so turn on the screen."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v22, "KOR"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 500
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 501
    if-eqz v17, :cond_d

    const/16 v22, -0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 502
    :cond_d
    if-nez v17, :cond_e

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 516
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v13, v0, :cond_10

    .line 517
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v13, :cond_23

    const/16 v22, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_23

    .line 518
    const-string v22, "PowerUI"

    const-string v23, "start Wireless charging"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const v23, 0x7f0c0131

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    .line 532
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v22, v0

    if-nez v22, :cond_28

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c0136

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const v23, 0x7f0c0136

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    .line 597
    :cond_10
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v10, v0, :cond_11

    .line 599
    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v22, v0

    if-eqz v22, :cond_29

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c013c

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const v23, 0x7f0c013b

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    .line 650
    .end local v4           #bucket:I
    .end local v10           #oldBatteryChargetype:I
    .end local v11           #oldBatteryHealth:I
    .end local v12           #oldBatteryLevel:I
    .end local v13           #oldBatteryOnline:I
    .end local v14           #oldBatteryStatus:I
    .end local v15           #oldBucket:I
    .end local v16           #oldInvalidCharger:I
    .end local v17           #oldPlugType:I
    .end local v18           #oldPlugged:Z
    .end local v20           #plugged:Z
    :cond_11
    :goto_e
    return-void

    .line 336
    .restart local v10       #oldBatteryChargetype:I
    .restart local v11       #oldBatteryHealth:I
    .restart local v12       #oldBatteryLevel:I
    .restart local v13       #oldBatteryOnline:I
    .restart local v14       #oldBatteryStatus:I
    .restart local v16       #oldInvalidCharger:I
    .restart local v17       #oldPlugType:I
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 337
    .restart local v20       #plugged:Z
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 401
    .restart local v4       #bucket:I
    .restart local v9       #lowBatteryDumpCount:I
    .restart local v15       #oldBucket:I
    .restart local v18       #oldPlugged:Z
    :cond_14
    const-string v22, "PowerUI"

    const-string v23, "Low battery dump count reaches maximum"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 408
    .end local v9           #lowBatteryDumpCount:I
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 409
    .restart local v6       #isCpuChecked:Z
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 410
    .restart local v7       #isDisplayChecked:Z
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 411
    .restart local v5       #isBackgroundChecked:Z
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 417
    .restart local v8       #isHapticChecked:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "psm_switch"

    const/16 v24, 0x1

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.settings.POWERSAVING_CHANGED"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    const-string v22, "PowerUI"

    const-string v23, "Power saving mode enables automatically"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 430
    .end local v5           #isBackgroundChecked:Z
    .end local v6           #isCpuChecked:Z
    .end local v7           #isDisplayChecked:Z
    .end local v8           #isHapticChecked:Z
    :cond_1a
    if-ge v4, v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    if-gez v4, :cond_1c

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    move/from16 v22, v0

    if-gez v22, :cond_1b

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    goto/16 :goto_8

    .line 436
    :cond_1b
    if-nez v20, :cond_7

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    goto/16 :goto_8

    .line 440
    :cond_1c
    if-le v4, v15, :cond_1d

    if-lez v4, :cond_1d

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    goto/16 :goto_8

    .line 443
    :cond_1d
    if-eqz v20, :cond_7

    if-nez v18, :cond_7

    if-gez v4, :cond_7

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    move/from16 v22, v0

    if-ltz v22, :cond_1e

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    goto/16 :goto_8

    .line 449
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    goto/16 :goto_8

    .line 458
    :cond_1f
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v0, v14, :cond_8

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    goto/16 :goto_9

    .line 468
    .restart local v21       #powerManager:Landroid/os/PowerManager;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    const-string v24, "PowerUI"

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string v24, "PowerUI"

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_a

    .line 474
    .end local v21           #powerManager:Landroid/os/PowerManager;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_a

    .line 481
    :cond_22
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v0, v14, :cond_a

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->dismissChargingInterruptionWarning()V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_b

    .line 520
    :cond_23
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v0, v13, :cond_25

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    const/16 v22, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 522
    :cond_24
    const-string v22, "PowerUI"

    const-string v23, "switch from wireless to cable"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const v23, 0x7f0c0132

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    goto/16 :goto_c

    .line 524
    :cond_25
    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v0, v13, :cond_26

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v0, v13, :cond_27

    :cond_26
    const/16 v22, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_27

    .line 526
    const-string v22, "PowerUI"

    const-string v23, "switch from cable to wireless"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const v23, 0x7f0c0133

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    goto/16 :goto_c

    .line 528
    :cond_27
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v0, v13, :cond_f

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->dismissWirelessChargingNotice()V

    goto/16 :goto_c

    .line 536
    :cond_28
    if-nez v13, :cond_10

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    goto/16 :goto_d

    .line 602
    :cond_29
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v0, v10, :cond_11

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    goto/16 :goto_e

    .line 607
    .end local v4           #bucket:I
    .end local v10           #oldBatteryChargetype:I
    .end local v11           #oldBatteryHealth:I
    .end local v12           #oldBatteryLevel:I
    .end local v13           #oldBatteryOnline:I
    .end local v14           #oldBatteryStatus:I
    .end local v15           #oldBucket:I
    .end local v16           #oldInvalidCharger:I
    .end local v17           #oldPlugType:I
    .end local v18           #oldPlugged:Z
    .end local v20           #plugged:Z
    :cond_2a
    const-string v22, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 608
    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2b

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    .line 610
    const-string v22, "PowerUI"

    const-string v23, "Language is changed so notify FullBatteryNotification again"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    .line 614
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v22, v0

    if-nez v22, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2c

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    .line 617
    const-string v22, "PowerUI"

    const-string v23, "Language is changed so notify incompatible charger again"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const v23, 0x7f0c0137

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    goto/16 :goto_e

    .line 619
    :cond_2c
    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    .line 621
    const-string v22, "PowerUI"

    const-string v23, "Language is changed so notify slow charging again"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const v23, 0x7f0c013b

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    goto/16 :goto_e

    .line 625
    :cond_2d
    const-string v22, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 626
    const-string v22, "PowerUI"

    const-string v23, "Face detection is failed before dimming"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_e

    .line 628
    :cond_2e
    const-string v22, "com.sec.factory.app.factorytest.FTA_ON"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 630
    const-string v22, "PowerUI"

    const-string v23, "FTA mode ON"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 631
    :cond_2f
    const-string v22, "com.sec.factory.app.factorytest.FTA_OFF"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 633
    const-string v22, "PowerUI"

    const-string v23, "FTA mode OFF"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 634
    :cond_30
    const-string v22, "com.samsung.pen.INSERT"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 635
    const-string v22, "penInsert"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 636
    .local v19, penInsert:Z
    if-nez v19, :cond_11

    const/16 v22, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 637
    const-string v22, "PowerUI"

    const-string v23, "S Pen is detached and wireless charging"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c0134

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    .line 640
    .end local v19           #penInsert:Z
    :cond_31
    const-string v22, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_32

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 643
    const-string v22, "PowerUI"

    const-string v23, "cover camera start"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 644
    :cond_32
    const-string v22, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_33

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 646
    const-string v22, "PowerUI"

    const-string v23, "cover camera stop"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 648
    :cond_33
    const-string v22, "PowerUI"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "unknown intent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method
