.class Lcom/android/systemui/statusbar/policy/SignalText$1;
.super Landroid/content/BroadcastReceiver;
.source "SignalText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SignalText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SignalText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SignalText;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalText$1;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$1;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSignalColor()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$1;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSignalText()V

    .line 99
    :cond_0
    return-void
.end method
