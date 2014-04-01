.class Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;
.super Ljava/lang/Object;
.source "ToddlerModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 235
    const-string v0, "STATUSBAR-ToddlerModeController"

    const-string v2, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->setMode(Z)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;Z)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 240
    return-void

    :cond_0
    move v0, v1

    .line 238
    goto :goto_0
.end method
