.class Lcom/android/systemui/statusbar/policy/LocationController$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController$1;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController$1;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #calls: Lcom/android/systemui/statusbar/policy/LocationController;->locationSettingsChanged()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationController;->access$000(Lcom/android/systemui/statusbar/policy/LocationController;)V

    .line 113
    :cond_0
    return-void
.end method
