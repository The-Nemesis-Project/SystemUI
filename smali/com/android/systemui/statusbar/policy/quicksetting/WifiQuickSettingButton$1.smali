.class Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 105
    .local v2, state:I
    const-string v3, "STATUSBAR-WifiQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi onReceive("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    .line 129
    .end local v2           #state:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 130
    return-void

    .line 109
    :cond_1
    const-string v3, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    const-string v3, "STATUSBAR-WifiQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_DIALOG_CANCEL_ACTION is received("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "called_dialog"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v3, "called_dialog"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->getActivateStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const-string v3, "info_type"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 121
    .local v1, msgId:I
    const-string v3, "STATUSBAR-WifiQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SHOW_INFO_MESSAGE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_DPM_WIFI:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)I

    move-result v3

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 123
    :cond_3
    const-string v3, "STATUSBAR-WifiQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi in not allowed -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    goto/16 :goto_0
.end method
