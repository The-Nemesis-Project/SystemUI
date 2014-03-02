.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;
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
    name = "PreviewItemOnTouchListener"
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
    .line 1408
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1408
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1415
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1438
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 1422
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->mPosX:I

    .line 1423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->mPosY:I

    .line 1424
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1425
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1426
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1431
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
