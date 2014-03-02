.class public Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "TSMQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-TSM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 50
    const/4 v2, 0x0

    const v3, 0x7f0c017f

    const v4, 0x7f02052d

    const v5, 0x7f02052d

    const v6, 0x7f02052d

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->setActivateStatus(I)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 79
    const-string v0, "com.android.tsm_parts"

    const-string v1, "com.android.tsm_parts.TSMParts"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLongClick()V
    .locals 5

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->statusBarCollapse()V

    new-instance v1, Landroid/graphics/Rect;

    const/16 v0, 0x12c

    const/16 v2, 0x190

    const/16 v3, 0x320

    const/16 v4, 0x3e8

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->mDrawRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.MULTIWINDOW_SMART_WINDOW_LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, penPopupIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.FlashBarService"

    const-string v3, "com.sec.android.app.FlashBarService.FlashBarService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "cropRect"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateToggState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/TSMQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
