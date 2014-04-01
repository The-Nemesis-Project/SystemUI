.class public Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "FlashlightQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FlashlightQuickSettingButton"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlashlight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "quickpanel_flashlight_text"

    const-string v2, "string"

    const-string v3, "com.android.systemui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "tw_quick_panel_icon_flashlight_on"

    const-string v3, "drawable"

    const-string v5, "com.android.systemui"

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "tw_quick_panel_icon_flashlight_off"

    const-string v5, "drawable"

    const-string v6, "com.android.systemui"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v0, p0

    move v5, v4

    move v6, v4

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->initLayout(IIIIII)V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    .line 31
    return-void
.end method

.method public onClick(Z)V
    .locals 5
    .parameter "paramBoolean"

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, localIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 37
    .local v1, bc:Ljava/lang/String;
    const/4 v0, 0x2

    .line 39
    .local v0, activateStatus:I
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    .line 41
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    rem-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    .line 43
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 44
    const-string v1, "com.sec.samsung.torchwidget.torch_on_3"

    .line 45
    const/4 v0, 0x1

    .line 50
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    .line 52
    new-instance v2, Landroid/content/Intent;

    .end local v2           #localIntent:Landroid/content/Intent;
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v2       #localIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void

    .line 47
    :cond_0
    const-string v1, "com.sec.samsung.torchwidget.torch_off"

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
