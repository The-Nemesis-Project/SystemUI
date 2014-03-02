.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V
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
    .line 1237
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 1250
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1256
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1258
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1259
    .local v0, scrollX:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 1260
    .local v1, scrollY:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1261
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1246
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1242
    return-void
.end method
