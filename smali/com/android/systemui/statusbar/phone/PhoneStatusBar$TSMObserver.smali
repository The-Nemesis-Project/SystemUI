.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotiColorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 3951
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3952
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3953
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 3955
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TSMObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTSMSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$920(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3961
    return-void
.end method
