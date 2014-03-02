.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

.field final synthetic val$localContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->val$localContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->val$localContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 177
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 180
    :cond_0
    return-void
.end method
