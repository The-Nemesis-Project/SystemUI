.class public Lcom/android/systemui/settings/BrightnessDialog;
.super Landroid/app/Dialog;
.source "BrightnessDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightnessDialog"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private final mBrightnessDialogLongTimeout:I

.field private final mBrightnessDialogShortTimeout:I

.field private final mDismissDialogRunnable:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v1, Lcom/android/systemui/settings/BrightnessDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessDialog$1;-><init>(Lcom/android/systemui/settings/BrightnessDialog;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogLongTimeout:I

    .line 58
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogShortTimeout:I

    .line 60
    return-void
.end method

.method private dismissBrightnessDialog(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDialog;->removeAllBrightnessDialogCallbacks()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method

.method private removeAllBrightnessDialogCallbacks()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onBrightnessLevelChanged()V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogShortTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->dismissBrightnessDialog(I)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 71
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 72
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 74
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 77
    const v1, 0x7f040013

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/BrightnessDialog;->setContentView(I)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/BrightnessDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 85
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 87
    iget v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogLongTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->dismissBrightnessDialog(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;)V

    .line 89
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->unregisterCallbacks()V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDialog;->removeAllBrightnessDialogCallbacks()V

    .line 96
    return-void
.end method
