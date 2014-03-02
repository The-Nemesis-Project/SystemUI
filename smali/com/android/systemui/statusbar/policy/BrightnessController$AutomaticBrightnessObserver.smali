.class Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutomaticBrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 1
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 354
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$400(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$700(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$300(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 363
    .local v0, automaticBrightness:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$400(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v1

    div-int/lit8 v2, v0, 0x14

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitValue(I)V

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$400(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v1

    div-int/lit8 v2, v0, 0x14

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitText(I)V

    .line 366
    const-string v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutomaticBrightnessObserver onChange() - automaticBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v0           #automaticBrightness:I
    :cond_0
    return-void
.end method
