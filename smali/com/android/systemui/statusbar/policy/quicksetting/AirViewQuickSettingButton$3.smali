.class Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;
.super Ljava/lang/Object;
.source "AirViewQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 392
    const-string v0, "STATUSBAR-AirView"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_master_onoff"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setDBvalues(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$600(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;I)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AirViewSettingActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method
