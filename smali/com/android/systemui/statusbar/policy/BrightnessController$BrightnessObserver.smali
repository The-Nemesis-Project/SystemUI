.class Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 1
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 303
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 309
    const/4 v2, 0x0

    .line 312
    .local v2, val:I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$400(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$300(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, brightness:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$500(Lcom/android/systemui/statusbar/policy/BrightnessController;)I

    move-result v3

    sub-int v2, v0, v3

    .line 317
    if-gez v2, :cond_0

    .line 318
    const/4 v2, 0x0

    .line 320
    :cond_0
    const-string v3, "StatusBar.BrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BrightnessObserver onChange() - val : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0           #brightness:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$400(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 326
    return-void

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$600(Lcom/android/systemui/statusbar/policy/BrightnessController;)I

    move-result v2

    goto :goto_0
.end method
