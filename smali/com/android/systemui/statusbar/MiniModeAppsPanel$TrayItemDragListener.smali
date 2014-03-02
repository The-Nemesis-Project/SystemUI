.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;
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
    name = "TrayItemDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1537
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1542
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1545
    .local v0, action:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v8, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return v6

    .line 1551
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1554
    const/4 v2, 0x0

    .line 1555
    .local v2, draggingView:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v2

    .line 1557
    if-eqz v2, :cond_0

    .line 1560
    move-object v5, v2

    .line 1562
    .local v5, sourceView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v8, :cond_0

    .line 1566
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1568
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1570
    :pswitch_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1571
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const v6, 0x7f09008d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 1572
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    const/16 v8, 0x66

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    move v6, v7

    .line 1575
    goto :goto_0

    :pswitch_1
    move v6, v7

    .line 1578
    goto :goto_0

    .line 1582
    :pswitch_2
    const/4 v4, 0x0

    .line 1585
    .local v4, leftMargin:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4300()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1588
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    if-ge v6, v8, :cond_6

    .line 1590
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v9, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_5

    .line 1592
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1593
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_5
    :goto_1
    move v6, v7

    .line 1642
    goto/16 :goto_0

    .line 1596
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-eq v6, v8, :cond_5

    .line 1597
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1598
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 1602
    :cond_7
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v7

    .line 1603
    goto/16 :goto_0

    .line 1607
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ne v6, v8, :cond_b

    .line 1608
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    if-ge v6, v8, :cond_a

    .line 1609
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v9, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_a

    .line 1611
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1612
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_a
    move v6, v7

    .line 1615
    goto/16 :goto_0

    .line 1619
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ne v6, v8, :cond_d

    .line 1620
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-eq v6, v8, :cond_c

    .line 1621
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1622
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_c
    move v6, v7

    .line 1624
    goto/16 :goto_0

    .line 1628
    :cond_d
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    if-ge v6, v8, :cond_f

    .line 1629
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v9, :cond_e

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_5

    .line 1631
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1632
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 1635
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-eq v6, v8, :cond_5

    .line 1636
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1637
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    .end local v4           #leftMargin:I
    :pswitch_3
    move v6, v7

    .line 1645
    goto/16 :goto_0

    .line 1650
    :pswitch_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4300()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1654
    :cond_10
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1655
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1656
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1658
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1659
    .local v3, i:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1660
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1662
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setAlpha(F)V

    .line 1663
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1677
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v6, v7

    .line 1678
    goto/16 :goto_0

    .line 1665
    .end local v3           #i:I
    :cond_11
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v6, v7

    .line 1666
    goto/16 :goto_0

    .line 1669
    :cond_12
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1670
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1671
    .restart local v3       #i:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1672
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1674
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setAlpha(F)V

    .line 1675
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 1681
    .end local v3           #i:I
    :pswitch_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_13

    .line 1683
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    const/16 v8, 0xff

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1684
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iput-object v11, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 1686
    :cond_13
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6, v11}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 1687
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1688
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v6, v7

    .line 1689
    goto/16 :goto_0

    .line 1568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
