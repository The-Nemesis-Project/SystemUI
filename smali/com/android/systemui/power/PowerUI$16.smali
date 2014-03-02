.class Lcom/android/systemui/power/PowerUI$16;
.super Landroid/app/Dialog;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showWaterDamageWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$16;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI$16;->dismiss()V

    .line 1281
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI$16;->dismiss()V

    .line 1276
    const/4 v0, 0x0

    return v0
.end method
