.class Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .parameter

    .prologue
    .line 4979
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 4980
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4981
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 4984
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2700(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 4985
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 4986
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 4987
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 4988
    return-void
.end method
