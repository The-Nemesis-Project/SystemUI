.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3559
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x3fd

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3562
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3563
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3564
    const/4 v4, 0x0

    .line 3565
    .local v4, flags:I
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3566
    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3567
    .local v6, reason:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, "recentapps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3568
    or-int/lit8 v4, v4, 0x2

    .line 3571
    .end local v6           #reason:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3643
    .end local v4           #flags:I
    :cond_1
    :goto_0
    return-void

    .line 3573
    :cond_2
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3575
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 3576
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3580
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto :goto_0

    .line 3584
    :cond_3
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3588
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3590
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 3591
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3592
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v9, -0x2710

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3593
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 3595
    :cond_4
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3597
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3598
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3601
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto :goto_0

    .line 3604
    :cond_5
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3605
    const-string v8, "level"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3606
    .local v1, battLevel:I
    const-string v8, "status"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3607
    .local v2, battStatus:I
    const/4 v8, 0x5

    if-gt v1, v8, :cond_6

    const/4 v8, 0x2

    if-eq v2, v8, :cond_6

    const/4 v8, 0x0

    if-eqz v8, :cond_6

    .line 3608
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3612
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 3610
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_1

    .line 3613
    .end local v1           #battLevel:I
    .end local v2           #battStatus:I
    :cond_7
    const-string v8, "com.sec.android.enterprisenotificationcenter.ENTERPRISE_MODE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3614
    const-string v8, "PhoneStatusBar"

    const-string v9, "onReceive mStartConferenceReceiver!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3617
    .local v5, knoxintent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3618
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 3619
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 3620
    .local v3, currentHomePackage:Ljava/lang/String;
    const-string v8, "EnterpriseModeChangeReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentHomePackage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    const-string v8, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3622
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3623
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f0200ae

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3624
    const-string v8, "EnterpriseModeChangeReceiver"

    const-string v9, "set security mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3626
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3628
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3629
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f020267

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3634
    :goto_2
    const-string v8, "EnterpriseModeChangeReceiver"

    const-string v9, "set normal mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3631
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f020259

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    goto :goto_2

    .line 3636
    .end local v3           #currentHomePackage:Ljava/lang/String;
    .end local v5           #knoxintent:Landroid/content/Intent;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_a
    const-string v8, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3637
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doMarquee(Z)V
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 3638
    :cond_b
    const-string v8, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3640
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3641
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_d
    const-string v8, "com.samsung.cover.OPEN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "coverType"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    :cond_e
    const-string v8, "coverOpen"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->coverCheck(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNetContSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$910(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0
.end method
