.class Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$3;
.super Ljava/lang/Object;
.source "DrivingModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    const-string v0, "STATUSBAR-DrivingModeController"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseSVoiceDrivingmodeSetting:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    const-string v1, "android.intent.action.DRIVING_MODE_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->callActivity(Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DrivingModeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
