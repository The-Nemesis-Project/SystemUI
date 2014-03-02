.class public Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "FlashlightQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final DB_FLASHLIGHT_TOGGLE:Ljava/lang/String; = "flashlight_toggle"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-Flashlight"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLEDControl:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 50
    const/4 v2, 0x0

    const v3, 0x7f0c017e

    const v4, 0x7f020279

    const v5, 0x7f020278

    const v6, 0x7f020277

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mLEDControl:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->checkLockMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->checkModeFull()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 62
    return-void

    .line 60
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setMode(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->checkMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private checkLockMode()Z
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_light"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private checkMode()Z
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toggle_light"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private checkModeFull()Z
    .locals 3

    .prologue
    .line 115
    :try_start_0
    const-string v0, "/sys/class/camera/flash/rear_flash"

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toggle_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "STATUSBAR-Flashlight"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "STATUSBAR-Flashlight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flashlight onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->checkLockMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->checkMode()Z

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setMode(I)V

    goto :goto_0

    .line 100
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    .line 101
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mLEDControl:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->on()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mLEDControl:Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightLedControl;->off()V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NotificationPanelMenuActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateToggState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
