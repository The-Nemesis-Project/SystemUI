.class Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #getter for: Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$000(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, dateFormatSetting:Ljava/lang/String;
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #getter for: Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$200(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/Context;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v1, :cond_3

    :cond_1
    const v1, 0x7f0a0002

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$102(Lcom/android/systemui/statusbar/policy/DateView;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 204
    return-void

    .line 197
    :cond_3
    const v1, 0x7f0a0004

    goto :goto_0

    .line 199
    :cond_4
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #getter for: Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$200(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/Context;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v1, :cond_6

    :cond_5
    const v1, 0x7f0a0001

    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$102(Lcom/android/systemui/statusbar/policy/DateView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_6
    const v1, 0x7f0a0003

    goto :goto_2
.end method
