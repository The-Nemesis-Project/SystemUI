.class Lcom/android/systemui/statusbar/policy/RightClock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RightClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/RightClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RightClock;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RightClock$1;->this$0:Lcom/android/systemui/statusbar/policy/RightClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "coverType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v2, "coverOpen"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RightClock$1;->this$0:Lcom/android/systemui/statusbar/policy/RightClock;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/RightClock;->coverCheck(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RightClock$1;->this$0:Lcom/android/systemui/statusbar/policy/RightClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RightClock;->updateClock()V

    .line 126
    return-void
.end method
