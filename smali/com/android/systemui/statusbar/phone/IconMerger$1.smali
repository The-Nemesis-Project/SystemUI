.class Lcom/android/systemui/statusbar/phone/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

.field final synthetic val$moreRequired:Z

.field final synthetic val$notificationIconsWidth:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IconMerger;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$notificationIconsWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 128
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v2, :cond_0

    .line 129
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 136
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$300(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$200(Lcom/android/systemui/statusbar/phone/IconMerger;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$notificationIconsWidth:I

    if-gt v3, v4, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :goto_2
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 136
    goto :goto_1

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$300(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method
