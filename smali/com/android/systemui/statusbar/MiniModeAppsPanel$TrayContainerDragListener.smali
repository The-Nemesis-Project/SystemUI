.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1729
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1732
    .local v0, action:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v7, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v5

    .line 1738
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1741
    const/4 v2, 0x0

    .line 1742
    .local v2, draggingView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v2

    .line 1744
    if-eqz v2, :cond_0

    .line 1747
    move-object v4, v2

    .line 1748
    .local v4, sourceView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v7, :cond_0

    .line 1752
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1754
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v5, v6

    .line 1756
    goto :goto_0

    :pswitch_1
    move v5, v6

    .line 1760
    goto :goto_0

    .line 1763
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v7, 0x0

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 1764
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v5, v6

    .line 1765
    goto :goto_0

    .line 1770
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4300()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1774
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1775
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1776
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1778
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1779
    .local v3, i:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1780
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1782
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setAlpha(F)V

    .line 1783
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1794
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v5, v6

    .line 1795
    goto/16 :goto_0

    .line 1785
    .end local v3           #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1786
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1787
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1788
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1790
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setAlpha(F)V

    .line 1791
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1799
    .end local v3           #i:I
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_4

    move v5, v6

    .line 1800
    goto/16 :goto_0

    .line 1803
    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 1804
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1805
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 1806
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3702(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 1807
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    move v5, v6

    .line 1818
    goto/16 :goto_0

    .line 1809
    :cond_6
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 1810
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1811
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 1812
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3702(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 1813
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1816
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
