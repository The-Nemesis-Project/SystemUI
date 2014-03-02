.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 149
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 150
    .local v2, handler:Landroid/os/Handler;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, action:Ljava/lang/String;
    const-string v7, "coverType"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, coverType:I
    const-string v7, "PhoneStatusBarView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", coverType ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v7, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eq v1, v12, :cond_0

    const/4 v7, 0x3

    if-ne v1, v7, :cond_4

    .line 155
    :cond_0
    const-string v7, "coverOpen"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v12, v7, :cond_3

    .line 156
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSViewCoverOpen:Z
    invoke-static {v7, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z

    .line 157
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v7, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 158
    const-string v7, "PhoneStatusBarView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear cover opened : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 166
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseSViewCover2:Z

    if-eqz v7, :cond_1

    .line 167
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSViewCoverBackground()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 168
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlackBGView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestForceScreenOn()V

    .line 171
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 172
    move-object v5, p1

    .line 173
    .local v5, localContext:Landroid/content/Context;
    new-instance v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    .end local v5           #localContext:Landroid/content/Context;
    :cond_2
    :goto_0
    return-void

    .line 183
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSViewCoverOpen:Z
    invoke-static {v7, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z

    .line 184
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScoverMargin:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v8

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 185
    new-instance v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;)V

    const-wide/16 v8, 0xb4

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 208
    :cond_4
    const-string v7, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 210
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseSViewCover2:Z

    if-eqz v7, :cond_2

    .line 211
    const-string v7, "suppressCoverUI"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 212
    .local v4, isSuppressed:Z
    const-string v7, "miniModeUI"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 213
    .local v3, isMiniModeUI:Z
    const-string v7, "sender"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, sender:Ljava/lang/String;
    const-string v7, "PhoneStatusBarView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "STATE_CHANGE : isSuppressed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isMiniModeUI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sender = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz v6, :cond_6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "GalleryCoverMode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 219
    if-eqz v4, :cond_7

    .line 220
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSuppressed:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 221
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSuppressed:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_5
    :goto_1
    if-eqz v3, :cond_8

    .line 228
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsMiniMode:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v11, :cond_6

    .line 229
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsMiniMode:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSViewCoverBackground()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    goto/16 :goto_0

    .line 224
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSuppressed:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsMiniMode:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method
