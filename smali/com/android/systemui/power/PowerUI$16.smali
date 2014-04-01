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
    .line 1378
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$16;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1385
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1386
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1380
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1381
    const/4 v0, 0x0

    return v0
.end method
