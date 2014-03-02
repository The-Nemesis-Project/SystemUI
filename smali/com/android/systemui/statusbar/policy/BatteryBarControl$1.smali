.class Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    const-string v5, "level"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->access$0(Lcom/android/systemui/statusbar/policy/BatteryBarControl;I)V

    .line 93
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    .line 94
    const-string v5, "status"

    .line 93
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 94
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    .line 93
    :cond_0
    #setter for: Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryCharging:Z
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->access$1(Lcom/android/systemui/statusbar/policy/BatteryBarControl;Z)V

    .line 95
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->access$2(Lcom/android/systemui/statusbar/policy/BatteryBarControl;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->access$3(I)V

    .line 108
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "com.samsung.cover.OPEN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "coverType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v2, "coverOpen"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->updateBarLayout(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->updateSettings()V

    goto :goto_0

    :cond_5
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->updateOrientationLayout()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->updateSettings()V

    goto :goto_0
.end method
