.class Lcom/android/systemui/recent/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 60
    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$100(Lcom/android/systemui/recent/RecentsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$200(Lcom/android/systemui/recent/RecentsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    const v2, 0x7f050011

    const v3, 0x7f050012

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/RecentsActivity;->overridePendingTransition(II)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #setter for: Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z
    invoke-static {v1, v4}, Lcom/android/systemui/recent/RecentsActivity;->access$202(Lcom/android/systemui/recent/RecentsActivity;Z)Z

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsActivity;->finish()V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    const-string v1, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->onWindowAnimationStart()V

    goto :goto_0

    .line 86
    :cond_3
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, reason:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->dismiss()V

    goto :goto_0
.end method
