.class public Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final ANIMATING_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.ANIMATING"

.field public static final COLLAPSE_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field public static final COLLAPSE_ACTION_PERMISSION:Ljava/lang/String; = "android.permission.EXPAND_STATUS_BAR"

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field public static final EXPAND_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field public static final STATE_OPENING:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanelExpandedFractionSum:F

.field mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

.field mPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    .line 35
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 66
    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "fmt"
    .parameter "args"

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "pv"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 76
    return-void
.end method

.method public collapseAllPanels(Z)V
    .locals 8
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, waiting:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 208
    .local v1, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse()V

    .line 210
    const/4 v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 213
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    goto :goto_0

    .line 216
    .end local v1           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "collapseAllPanels: animate=%s waiting=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v3, :cond_3

    .line 220
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 223
    :cond_3
    return-void
.end method

.method public getBarHeight()F
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public go(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "go state: %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 62
    return-void
.end method

.method public onAllPanelsCollapsed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.EXPAND_STATUS_BAR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setFocusable(Z)V

    .line 235
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onAllPanelsCollapsed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_statusbar_quickpanel_open_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 71
    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 4
    .parameter "openPanel"

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->setFocusable(Z)V

    .line 244
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPanelFullyOpened"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_statusbar_quickpanel_open_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    return-void
.end method

.method public onPanelPeeked()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.ANIMATING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPanelPeeked"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 149
    :goto_0
    return v2

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_8

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v1

    .line 115
    .local v1, panel:Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_2

    .line 117
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PanelBar.onTouch: no panel for x=%f, bailing"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_1
    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 122
    .local v0, enabled:Z
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "PanelBar.onTouch: state=%d ACTION_DOWN: panel %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    const/4 v6, 0x2

    if-eqz v0, :cond_4

    const-string v3, ""

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_3
    if-nez v0, :cond_5

    .line 126
    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 122
    :cond_4
    const-string v3, " (disabled)"

    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 146
    .end local v0           #enabled:Z
    .end local v1           #panel:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 149
    .local v2, result:Z
    :cond_7
    goto :goto_0

    .line 130
    .end local v2           #result:Z
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    goto :goto_2
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 4
    .parameter "panel"

    .prologue
    const/4 v3, 0x1

    .line 250
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 251
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 252
    const-string v0, "shouldn\'t happen: onTrackingStarted(%s) != mTouchingPanel(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 260
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 13
    .parameter "panel"
    .parameter "frac"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, fullyClosed:Z
    const/4 v1, 0x0

    .line 167
    .local v1, fullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;
    sget-boolean v8, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "panelExpansionChanged: start state=%d panel=%s"

    new-array v10, v12, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v10}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_0
    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 169
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 170
    .local v3, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    move v5, v6

    .line 172
    .local v5, visible:Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 173
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v8, :cond_2

    .line 174
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 177
    :cond_2
    const/4 v0, 0x0

    .line 178
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 179
    .local v4, thisFrac:F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v5, :cond_6

    move v8, v4

    :goto_2
    add-float/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 180
    sget-boolean v8, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "panelExpansionChanged:  -> %s: f=%.1f"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v10}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_3
    if-ne p1, v3, :cond_4

    .line 182
    const/high16 v8, 0x3f80

    cmpl-float v8, v4, v8

    if-nez v8, :cond_4

    move-object v1, p1

    .line 185
    .end local v4           #thisFrac:F
    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    .line 186
    if-nez v5, :cond_1

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    goto :goto_0

    .end local v5           #visible:Z
    :cond_5
    move v5, v7

    .line 170
    goto :goto_1

    .restart local v4       #thisFrac:F
    .restart local v5       #visible:Z
    :cond_6
    move v8, v9

    .line 179
    goto :goto_2

    .line 188
    .end local v4           #thisFrac:F
    :cond_7
    if-eqz v5, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    goto :goto_0

    .line 191
    .end local v3           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v5           #visible:Z
    :cond_8
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 192
    if-eqz v1, :cond_b

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v8, :cond_b

    .line 193
    invoke-virtual {p0, v12}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 200
    :cond_9
    :goto_3
    sget-boolean v8, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v8, :cond_a

    const-string v8, "panelExpansionChanged: end state=%d [%s%s ]"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    if-eqz v1, :cond_c

    const-string v7, " fullyOpened"

    :goto_4
    aput-object v7, v9, v6

    if-eqz v0, :cond_d

    const-string v6, " fullyClosed"

    :goto_5
    aput-object v6, v9, v12

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_a
    return-void

    .line 195
    :cond_b
    if-eqz v0, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v8, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v8, :cond_9

    .line 196
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    goto :goto_3

    .line 200
    :cond_c
    const-string v7, ""

    goto :goto_4

    :cond_d
    const-string v6, ""

    goto :goto_5
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 4
    .parameter "touch"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    .local v0, N:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    return-object v1
.end method

.method public setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V
    .locals 6
    .parameter "ph"

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 80
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "setPanelHolder: null PanelHolder"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :cond_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildCount()I

    move-result v0

    .line 86
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 87
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_2

    .line 89
    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 4
    .parameter "panel"

    .prologue
    .line 154
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOpeningPanel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setSelectedPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 158
    .local v1, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    if-eq v1, p1, :cond_1

    .line 159
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse()V

    goto :goto_0

    .line 162
    .end local v1           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_2
    return-void
.end method
