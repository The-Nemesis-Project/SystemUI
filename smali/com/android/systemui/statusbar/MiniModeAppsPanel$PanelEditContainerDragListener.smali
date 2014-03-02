.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;
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
    name = "PanelEditContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1893
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1898
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1901
    .local v0, action:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v9, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v10

    .line 1970
    :goto_0
    return v9

    .line 1907
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    move v9, v10

    .line 1908
    goto :goto_0

    .line 1910
    :cond_1
    const/4 v3, 0x0

    .line 1911
    .local v3, draggingView:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v3

    .line 1913
    if-nez v3, :cond_2

    move v9, v10

    .line 1914
    goto :goto_0

    .line 1916
    :cond_2
    move-object v7, v3

    .line 1918
    .local v7, sourceView:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-nez v9, :cond_4

    :cond_3
    move v9, v10

    .line 1921
    goto :goto_0

    .line 1923
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1925
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    move v9, v10

    .line 1970
    goto :goto_0

    .line 1927
    :pswitch_0
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v12, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v12

    if-ne v9, v12, :cond_5

    move v9, v11

    .line 1928
    goto :goto_0

    :cond_5
    move v9, v10

    .line 1930
    goto :goto_0

    :pswitch_1
    move v9, v11

    .line 1936
    goto :goto_0

    .line 1939
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1941
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1944
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v9, :cond_6

    .line 1945
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v9

    const v12, 0x7f09009f

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1946
    .local v5, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1947
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1948
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1951
    .end local v5           #previewIcon:Landroid/widget/ImageView;
    :cond_6
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1953
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1954
    .local v4, i:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1955
    .local v6, previewWidth:I
    mul-int v8, v4, v6

    .line 1956
    .local v8, xOffsetAtLeft:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v2, v9, 0x2

    .line 1957
    .local v2, centerX:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/HorizontalScrollView;

    if-eqz v9, :cond_7

    .line 1958
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v9

    check-cast v9, Landroid/widget/HorizontalScrollView;

    sub-int v12, v8, v2

    invoke-virtual {v9, v12, v10}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1960
    :cond_7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1962
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v9

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setAlpha(F)V

    .line 1963
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setEnabled(Z)V

    move v9, v11

    .line 1965
    goto/16 :goto_0

    .end local v2           #centerX:I
    .end local v4           #i:I
    .end local v6           #previewWidth:I
    .end local v8           #xOffsetAtLeft:I
    :cond_8
    move v9, v10

    .line 1967
    goto/16 :goto_0

    .line 1925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
