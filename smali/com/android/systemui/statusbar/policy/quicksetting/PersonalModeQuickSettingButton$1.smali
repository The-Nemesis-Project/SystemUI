.class Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonalModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    const/4 v2, 0x1

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->setMode(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;I)V

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    const/4 v2, 0x0

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->setMode(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;I)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V

    goto :goto_0
.end method
