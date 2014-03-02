.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/16 v1, 0x425

    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 775
    :cond_0
    return-void
.end method
