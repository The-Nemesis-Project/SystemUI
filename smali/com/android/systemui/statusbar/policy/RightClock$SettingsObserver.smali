.class Lcom/android/systemui/statusbar/policy/RightClock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "RightClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RightClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/RightClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RightClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RightClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/RightClock;

    .line 46
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RightClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/RightClock;

    #getter for: Lcom/android/systemui/statusbar/policy/RightClock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/RightClock;->access$001(Lcom/android/systemui/statusbar/policy/RightClock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "statusbar_clock_style"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "statusbar_clock_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "statusbar_clock_position"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "statusbar_show_day"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RightClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/RightClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RightClock;->updateSettings()V

    .line 58
    return-void
.end method