.class Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;
.super Landroid/database/ContentObserver;
.source "LocationQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z

    .line 104
    const-string v0, "STATUSBAR-LocationQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setActivateStatus(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 110
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
