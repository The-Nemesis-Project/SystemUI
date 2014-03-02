.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongLifeModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1092
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1093
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1096
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1098
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "longlife_mode"

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v9

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v0, v5

    .line 1101
    .local v0, mEnabled:Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 1102
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1104
    .local v1, mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_5

    .line 1105
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1111
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    .end local v1           #mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v7, :cond_3

    .line 1117
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v7, :cond_2

    .line 1118
    const/4 v4, 0x0

    .line 1119
    .local v4, topMargin:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1121
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v0, :cond_1

    .line 1122
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0044

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int v4, v7, v8

    .line 1126
    :cond_1
    invoke-virtual {v2, v6, v4, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1127
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    .end local v2           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4           #topMargin:I
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v7, :cond_3

    .line 1131
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v0, :cond_6

    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setVisibility(I)V

    .line 1136
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_7

    :goto_3
    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z
    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1137
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1138
    return-void

    .end local v0           #mEnabled:Z
    :cond_4
    move v0, v6

    .line 1098
    goto :goto_0

    .line 1107
    .restart local v0       #mEnabled:Z
    .restart local v1       #mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$LongLifeModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1108
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f0e0073

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .end local v1           #mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_6
    move v7, v6

    .line 1131
    goto :goto_2

    :cond_7
    move v5, v6

    .line 1136
    goto :goto_3
.end method
