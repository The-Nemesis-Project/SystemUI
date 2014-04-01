.class Lcom/android/systemui/statusbar/policy/SmartBondingController$5;
.super Ljava/lang/Object;
.source "SmartBondingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartBondingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    #getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    #getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    #getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$402(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 189
    :cond_0
    return-void
.end method
