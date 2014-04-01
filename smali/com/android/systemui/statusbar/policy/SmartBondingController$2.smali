.class Lcom/android/systemui/statusbar/policy/SmartBondingController$2;
.super Ljava/lang/Object;
.source "SmartBondingController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V
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
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    #getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$100(Lcom/android/systemui/statusbar/policy/SmartBondingController;)J

    move-result-wide v1

    #calls: Lcom/android/systemui/statusbar/policy/SmartBondingController;->setSBUsageStatus(IJ)V
    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$200(Lcom/android/systemui/statusbar/policy/SmartBondingController;IJ)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    #setter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->isSelected:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$302(Lcom/android/systemui/statusbar/policy/SmartBondingController;Z)Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$402(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 152
    return-void
.end method
