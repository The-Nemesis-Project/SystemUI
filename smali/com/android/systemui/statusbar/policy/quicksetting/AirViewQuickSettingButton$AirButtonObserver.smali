.class Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;
.super Landroid/database/ContentObserver;
.source "AirViewQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirButtonObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 279
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 283
    const-string v0, "STATUSBAR-AirView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirButtonObserver.onChange() - AirButtonObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirButtonObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 289
    return-void
.end method
