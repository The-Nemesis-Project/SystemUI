.class Lcom/android/systemui/statusbar/policy/BrightnessController$5;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 397
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$800(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 399
    const-string v3, "edm.intent.action.allow.settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    .line 403
    .local v1, currentUserId:I
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #calls: Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$900(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v1           #currentUserId:I
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "StatusBar.BrightnessController"

    const-string v4, "Couldn\'t get current user id for allow settings changes"

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 409
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #calls: Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$900(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    goto :goto_0
.end method
