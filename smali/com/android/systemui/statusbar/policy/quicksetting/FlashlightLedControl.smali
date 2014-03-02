.class Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;
.super Ljava/lang/Object;
.source "FlashlightLedControl.java"


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FlashlightLedControl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFLQSB:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mFLQSB:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public off()V
    .locals 6

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 4685
    .local v1, input:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4687
    .local v2, out:Ljava/io/FileWriter;
    const-string v1, "0"

    .line 4702
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4703
    .end local v2           #out:Ljava/io/FileWriter;
    .local v3, out:Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 4708
    if-eqz v3, :cond_1

    .line 4710
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "toggle_light"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mFLQSB:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->updateToggState(I)V

    :cond_1
    :goto_0
    move-object v2, v3

    .line 4715
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_2
    :goto_1
    return-void

    .line 4704
    :catch_0
    move-exception v0

    .line 4705
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "FlashlightLedControl"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4708
    if-eqz v2, :cond_2

    .line 4710
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4711
    :catch_1
    move-exception v4

    goto :goto_1

    .line 4708
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    .line 4710
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4712
    :cond_3
    :goto_4
    throw v4

    .line 4711
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 4708
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_3

    .line 4704
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public on()V
    .locals 7

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 4685
    .local v1, input:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4687
    .local v2, out:Ljava/io/FileWriter;
    const-string v1, "1"

    .line 4702
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4703
    .end local v2           #out:Ljava/io/FileWriter;
    .local v3, out:Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 4708
    if-eqz v3, :cond_0

    .line 4710
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v4, "flashlight"

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toggle_light"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->mFLQSB:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->updateToggState(I)V

    :cond_0
    :goto_0
    move-object v2, v3

    .line 4715
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 4704
    :catch_0
    move-exception v0

    .line 4705
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "FlashlightLedControl"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4708
    if-eqz v2, :cond_1

    .line 4710
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4711
    :catch_1
    move-exception v4

    goto :goto_1

    .line 4708
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 4710
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4712
    :cond_2
    :goto_4
    throw v4

    .line 4711
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 4708
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_3

    .line 4704
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_2
.end method
