.class public Lcom/android/systemui/statusbar/tablet/SettingsView;
.super Landroid/widget/LinearLayout;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "SettingsView"


# instance fields
.field mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

.field mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

.field mRotationLockContainer:Landroid/view/View;

.field mRotationLockSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private onClickNetwork()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 118
    return-void
.end method

.method private onClickSettings()V
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 100
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickNetwork()V

    goto :goto_0

    .line 103
    :sswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickSettings()V

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x7f0900f4 -> :sswitch_0
        0x7f090100 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->release()V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->release()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->release()V

    .line 95
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    .line 68
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f0900f7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotationLockContainer:Landroid/view/View;

    .line 71
    const v1, 0x7f0900fb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotationLockSeparator:Landroid/view/View;

    .line 72
    new-instance v2, Lcom/android/systemui/statusbar/policy/AutoRotateController;

    const v1, 0x7f0900fa

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v3, Lcom/android/systemui/statusbar/tablet/SettingsView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/SettingsView$1;-><init>(Lcom/android/systemui/statusbar/tablet/SettingsView;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/statusbar/policy/AutoRotateController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    .line 82
    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController;

    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 84
    new-instance v2, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    const v1, 0x7f0900ff

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    .line 86
    const v1, 0x7f090100

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
