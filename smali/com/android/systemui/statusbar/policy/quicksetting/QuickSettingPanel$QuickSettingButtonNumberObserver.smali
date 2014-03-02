.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingButtonNumberObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    .line 282
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 283
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/16 v6, 0x14

    .line 287
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 289
    :try_start_0
    const-string v1, "STATUSBAR-QuickSettingPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update() : DB_NUMBER_OF_APPS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "custom_toggle_number"

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "custom_toggle_number"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    const/16 v2, 0x14

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    .line 301
    return-void

    .line 294
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_toggle_number"

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "STATUSBAR-QuickSettingPanel"

    const-string v2, " SettingNotFoundException : number_of_apps = 20"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I
    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;I)I

    goto :goto_0
.end method
