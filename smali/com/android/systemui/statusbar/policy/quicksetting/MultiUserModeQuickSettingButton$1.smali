.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiUserModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->reloadUserInfo()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->queryForUserInformation()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V

    goto :goto_0
.end method