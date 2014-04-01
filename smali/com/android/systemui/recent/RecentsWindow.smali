.class public Lcom/android/systemui/recent/RecentsWindow;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Lcom/android/systemui/recent/IRecentsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    .line 24
    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$1;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 73
    .local v2, trayHeight:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x82f

    const v4, 0x1000100

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 84
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v0, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V

    return-void
.end method

.method private initRecentPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f04001d

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v1, Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsWindow;Lcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 107
    return-void
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 139
    return-void
.end method

.method public dismissAndGoHome()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 112
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 121
    :cond_0
    return-void
.end method

.method public isActivityShowing()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    return v0
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-nez v0, :cond_0

    .line 125
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    goto :goto_0
.end method
