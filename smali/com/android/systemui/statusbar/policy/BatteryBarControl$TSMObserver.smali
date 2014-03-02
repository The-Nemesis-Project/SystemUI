.class Lcom/android/systemui/statusbar/policy/BatteryBarControl$TSMObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BBCTSMObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarControl;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$TSMObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$TSMObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarControl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->updateSettings()V

    .line 215
    return-void
.end method
