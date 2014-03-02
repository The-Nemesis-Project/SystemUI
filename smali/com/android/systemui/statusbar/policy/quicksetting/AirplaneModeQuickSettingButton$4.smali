.class Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;
.super Ljava/lang/Object;
.source "AirplaneModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 248
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConfirmPopup() - Positive onClick mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->val$value:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->val$value:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "showConfirmPopup() - Airplane mode turning on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->val$value:Z

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setAirplaneMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    .line 262
    return-void

    .line 256
    :cond_0
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "showConfirmPopup() - Airplane mode turning off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    goto :goto_0
.end method
