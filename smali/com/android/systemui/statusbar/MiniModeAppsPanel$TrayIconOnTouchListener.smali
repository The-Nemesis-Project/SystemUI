.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayIconOnTouchListener"
.end annotation


# instance fields
.field private mPosX:I

.field private mPosY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1442
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1449
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4300()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1453
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1471
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1511
    :cond_1
    :goto_1
    return v8

    .line 1456
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->mPosX:I

    .line 1457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->mPosY:I

    .line 1458
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1459
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1460
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1465
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1477
    :cond_2
    if-eqz p1, :cond_1

    .line 1478
    move-object v3, p1

    .line 1479
    .local v3, v:Landroid/view/View;
    const v4, 0x7f09008d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1481
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 1485
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1486
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_1

    .line 1490
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_1

    .line 1491
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1493
    .local v1, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1496
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto/16 :goto_1

    .line 1504
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :pswitch_5
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1506
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    goto/16 :goto_1

    .line 1453
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1481
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
