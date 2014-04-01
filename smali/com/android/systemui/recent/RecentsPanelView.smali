.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    }
.end annotation


# static fields
.field private static final ASSIST_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final CONTROL_PANEL_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.controlpanel.activity.JobManagerActivity"

.field private static final CONTROL_PANEL_PACKAGE:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field static final DEBUG:Z = false

.field private static final GOOGLEBUTTON_3RDAPP:I = 0x2

.field private static final GOOGLEBUTTON_DEFAULT:I = 0x0

.field private static final GOOGLEBUTTON_NONE:I = 0x3

.field private static final GOOGLEBUTTON_SEARCH:I = 0x1

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern; = null

.field private static final RECENTSPANEL_CLOSE:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_CLOSE"

.field private static final RECENTSPANEL_OPEN:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_OPEN"

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"

.field private static final TASK_MANAGER_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

.field private static final TASK_MANAGER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.taskmanager"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-RecentsPanelView"


# instance fields
.field private mAnimateIconOfFirstTask:Z

.field private mCallUiHiddenBeforeNextReload:Z

.field private mFitThumbnailToXY:Z

.field private mHighEndGfx:Z

.field private mIsTaskManagerInstalled:Z

.field private mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mNoRecentApp:Landroid/widget/TextView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mRecentItemLayoutId:I

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

.field private mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

.field private mRecentsDivider01:Landroid/widget/LinearLayout;

.field private mRecentsDivider02:Landroid/widget/LinearLayout;

.field private mRecentsGoogleButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShortcutComponentNames:[Ljava/lang/String;

.field private mShowRecentApplicationShortCut:Z

.field private mShowRecentGoogleNowButton:Z

.field private mShowing:Z

.field private mThumbnailWidth:I

.field private mWaitingForWindowAnimation:Z

.field private mWaitingToShow:Z

.field private mWindowAnimationStartTime:J

.field private recentButton:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 366
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 369
    sget-object v1, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 372
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    .line 373
    invoke-static {p1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 374
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 376
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isControlPanelInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    .line 381
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    .line 385
    return-void

    :cond_1
    move v1, v2

    .line 377
    goto :goto_0

    :cond_2
    move v3, v2

    .line 381
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/recent/RecentsPanelView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method private animateInIconOfFirstTask()V
    .locals 15

    .prologue
    .line 893
    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v11}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v11

    if-nez v11, :cond_2

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    sub-long/2addr v11, v13

    long-to-int v8, v11

    .line 897
    .local v8, timeSinceWindowAnimation:I
    const/16 v6, 0x96

    .line 898
    .local v6, minStartDelay:I
    const/4 v11, 0x0

    rsub-int v12, v8, 0x96

    const/16 v13, 0x96

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 900
    .local v7, startDelay:I
    const/16 v2, 0xfa

    .line 901
    .local v2, duration:I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 902
    .local v3, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3fc0

    invoke-direct {v1, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 903
    .local v1, cubic:Landroid/animation/TimeInterpolator;
    iget-object v11, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-static {v11}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 904
    const/4 v11, 0x3

    new-array v0, v11, [Landroid/view/View;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    aput-object v12, v0, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    aput-object v12, v0, v11

    const/4 v11, 0x2

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    aput-object v12, v0, v11

    .local v0, arr$:[Landroid/view/View;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 907
    .local v9, v:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 908
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    int-to-long v12, v7

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 911
    .local v10, vpa:Landroid/view/ViewPropertyAnimator;
    new-instance v11, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-direct {v11, v10, v9}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 904
    .end local v10           #vpa:Landroid/view/ViewPropertyAnimator;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 914
    .end local v9           #v:Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 915
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 917
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #cubic:Landroid/animation/TimeInterpolator;
    .end local v2           #duration:I
    .end local v3           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #minStartDelay:I
    .end local v7           #startDelay:I
    .end local v8           #timeSinceWindowAnimation:I
    :cond_2
    return-void
.end method

.method private checkAssistAppIsInstalled()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1392
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v2

    .line 1395
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 1396
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1397
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 1398
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1412
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #component:Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 1403
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1405
    const/4 v3, 0x1

    goto :goto_0

    .line 1407
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 1412
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_2
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .parameter "transitioner"

    .prologue
    .line 802
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 803
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 804
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 805
    return-void
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 1563
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1565
    .local v1, mAM:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 1567
    .local v2, mIconDpi:I
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1572
    .local v3, result:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 1568
    .end local v3           #result:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 1569
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    .restart local v3       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private isControlPanelInstalled()Z
    .locals 6

    .prologue
    .line 1371
    const/4 v2, 0x0

    .line 1373
    .local v2, useControlPanel:Z
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.controlpanel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1375
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1376
    const/4 v2, 0x1

    .line 1384
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 1378
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1380
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1381
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 1382
    const-string v3, "RecentsPanelView"

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTaskManagerInstalled()Z
    .locals 6

    .prologue
    .line 1354
    const/4 v2, 0x0

    .line 1356
    .local v2, useTaskManager:Z
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.taskmanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1358
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1359
    const/4 v2, 0x1

    .line 1367
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 1361
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1363
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1364
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 1365
    const-string v3, "RecentsPanelView"

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "ri"

    .prologue
    .line 1540
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1542
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    .line 1543
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1544
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1558
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 1548
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 1549
    .local v2, iconRes:I
    if-eqz v2, :cond_2

    .line 1550
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1551
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1558
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconRes:I
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1555
    :catch_0
    move-exception v1

    .line 1556
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "RecentsPanelView"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 392
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 393
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 394
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 395
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 396
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "refreshRecentTasksList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method private replaceGoogleButtonTextAndIcon(I)V
    .locals 3
    .parameter "assist_type"

    .prologue
    const v2, 0x7f020251

    const/4 v1, 0x0

    .line 1416
    if-nez p1, :cond_3

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1418
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0151

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1425
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1429
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1430
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonToSearchTextAndIcon()V

    goto :goto_0

    .line 1431
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1432
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTo3rdAppTextAndIcon()V

    goto :goto_0

    .line 1434
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private replaceGoogleButtonTo3rdAppTextAndIcon()V
    .locals 24

    .prologue
    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1456
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "search"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-virtual/range {v20 .. v23}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v12

    .line 1458
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 1459
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1460
    .local v16, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_0

    .line 1461
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1464
    .local v7, buttonText:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 1468
    .local v13, metaData:Landroid/os/Bundle;
    if-eqz v13, :cond_1

    const-string v20, "com.android.systemui.action_assist_icon"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .local v11, iconResId:I
    if-eqz v11, :cond_1

    .line 1470
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v17

    .line 1471
    .local v17, res:Landroid/content/res/Resources;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1476
    .end local v11           #iconResId:I
    .end local v17           #res:Landroid/content/res/Resources;
    .local v6, buttonIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020258

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1478
    .local v4, SearchIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 1479
    .local v19, width:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1480
    .local v10, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 1482
    .local v18, scale:F
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1484
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1485
    sget-boolean v20, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v20, :cond_2

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    .end local v4           #SearchIcon:Landroid/graphics/drawable/Drawable;
    .end local v6           #buttonIcon:Landroid/graphics/drawable/Drawable;
    .end local v7           #buttonText:Ljava/lang/String;
    .end local v10           #height:I
    .end local v13           #metaData:Landroid/os/Bundle;
    .end local v16           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v18           #scale:F
    .end local v19           #width:I
    :cond_0
    :goto_1
    return-void

    .line 1473
    .restart local v7       #buttonText:Ljava/lang/String;
    .restart local v13       #metaData:Landroid/os/Bundle;
    .restart local v16       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6       #buttonIcon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1488
    .restart local v4       #SearchIcon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #height:I
    .restart local v18       #scale:F
    .restart local v19       #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1499
    .end local v4           #SearchIcon:Landroid/graphics/drawable/Drawable;
    .end local v6           #buttonIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #height:I
    .end local v13           #metaData:Landroid/os/Bundle;
    .end local v18           #scale:F
    .end local v19           #width:I
    :catch_0
    move-exception v9

    .line 1500
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "RecentsPanelView"

    const-string v21, " (NameNotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1492
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #SearchIcon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #buttonIcon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #height:I
    .restart local v13       #metaData:Landroid/os/Bundle;
    .restart local v18       #scale:F
    .restart local v19       #width:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1493
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #buttonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1494
    .local v5, bitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1496
    .local v8, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1501
    .end local v4           #SearchIcon:Landroid/graphics/drawable/Drawable;
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    .end local v10           #height:I
    .end local v13           #metaData:Landroid/os/Bundle;
    .end local v18           #scale:F
    .end local v19           #width:I
    :catch_1
    move-exception v14

    .line 1502
    .local v14, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "RecentsPanelView"

    const-string v21, " (Resources.NotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private replaceGoogleButtonToSearchTextAndIcon()V
    .locals 3

    .prologue
    const v2, 0x7f020258

    const/4 v1, 0x0

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1441
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private replaceRemoveAllButtonTextAndIcon()V
    .locals 3

    .prologue
    const v2, 0x7f020250

    const/4 v1, 0x0

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1525
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0152

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1532
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private replaceTaskButtonTextAndIcon()V
    .locals 3

    .prologue
    const v2, 0x7f020252

    const/4 v1, 0x0

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1510
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1517
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 448
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    .line 445
    :cond_0
    return-void
.end method

.method private showImpl(Z)V
    .locals 8
    .parameter "show"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 457
    const-string v5, "RecentsPanelView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 460
    if-eqz p1, :cond_9

    .line 462
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "recentapps"

    invoke-static {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 466
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 515
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    :goto_0
    return-void

    .line 473
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    .line 475
    .local v2, noApps:Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 476
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v2, :cond_6

    move v5, v4

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_2

    .line 479
    if-eqz v2, :cond_7

    .line 480
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 485
    :cond_2
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_4

    .line 486
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    .line 489
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v5, :cond_8

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v1

    .line 491
    .local v1, mAssistApp:I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 493
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 498
    .end local v1           #mAssistApp:I
    :cond_3
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    .line 503
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 504
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 505
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .end local v2           #noApps:Z
    :cond_5
    move v2, v4

    .line 473
    goto :goto_1

    .line 476
    .restart local v2       #noApps:Z
    :cond_6
    const/4 v5, 0x4

    goto :goto_2

    .line 482
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 494
    :cond_8
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v5, :cond_3

    .line 495
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 508
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v2           #noApps:Z
    :cond_9
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 510
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 511
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    goto/16 :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1117
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 1120
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .parameter "h"
    .parameter "icon"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 808
    if-eqz p2, :cond_1

    .line 809
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    if-eqz p4, :cond_0

    .line 812
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f05000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 815
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 5
    .parameter "h"
    .parameter "thumbnail"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 821
    if-eqz p2, :cond_4

    .line 825
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 832
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    .line 833
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 842
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 843
    if-eqz p4, :cond_2

    .line 844
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x7f05000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 847
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 849
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 851
    :cond_4
    return-void

    .line 835
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 836
    .local v1, scaleMatrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 837
    .local v0, scale:F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 838
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 839
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 987
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 990
    .local v0, items:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v3, Landroid/view/View;

    if-lez v0, :cond_1

    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 996
    .local v1, numRecentApps:I
    :goto_2
    if-nez v1, :cond_3

    .line 997
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, recentAppsAccessibilityDescription:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1004
    return-void

    .end local v0           #items:I
    .end local v1           #numRecentApps:I
    .end local v2           #recentAppsAccessibilityDescription:Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 987
    goto :goto_0

    .line 990
    .restart local v0       #items:I
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    :cond_2
    move v1, v4

    .line 993
    goto :goto_2

    .line 1000
    .restart local v1       #numRecentApps:I
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #recentAppsAccessibilityDescription:Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 2

    .prologue
    .line 930
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "clearRecentTasksList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 935
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    .line 937
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V

    .line 537
    return-void
.end method

.method public dismissAndGoBack()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    .line 541
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1580
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1582
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    .line 1583
    .local v7, paddingLeft:I
    invoke-virtual {p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v6

    .line 1584
    .local v6, offsetRequired:Z
    if-eqz v6, :cond_0

    .line 1585
    invoke-virtual {p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v7, v0

    .line 1588
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int v2, v0, v7

    .line 1589
    .local v2, left:I
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v7

    .line 1590
    .local v3, right:I
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v6}, Landroid/view/View;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 1591
    .local v4, top:I
    invoke-virtual {p0, v6}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 1593
    .local v5, bottom:I
    if-eqz v6, :cond_1

    .line 1594
    invoke-virtual {p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 1595
    invoke-virtual {p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 1597
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->drawFadedEdges(Landroid/graphics/Canvas;IIII)V

    .line 1598
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 568
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 569
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 570
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 572
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1606
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v1}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    .line 1611
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "selectedView"
    .parameter "anchorView"
    .parameter "thumbnailView"

    .prologue
    .line 1132
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1133
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    move-object p2, p1

    .end local p2
    :cond_0
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1135
    .local v0, popup:Landroid/widget/PopupMenu;
    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 1136
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1137
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1161
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$3;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1167
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1168
    return-void
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 1017
    .local v5, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v0, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1018
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1019
    .local v3, context:Landroid/content/Context;
    const-string v9, "activity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1022
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 1023
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    .line 1024
    .local v8, usingDrawingCache:Z
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v9, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    .line 1025
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1026
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 1028
    const/4 v8, 0x0

    .line 1031
    :cond_0
    if-eqz v8, :cond_1

    .line 1032
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1033
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1035
    :cond_1
    if-nez v2, :cond_3

    .line 1040
    .local v7, opts:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 1041
    iget v9, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v9, :cond_4

    if-eqz v1, :cond_4

    .line 1043
    iget v9, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    invoke-virtual {v1, v9, v11, v7}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1061
    :goto_1
    if-eqz v8, :cond_2

    .line 1062
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1064
    :cond_2
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v9, :cond_5

    .line 1066
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v9}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    .line 1072
    :goto_2
    return-void

    .line 1035
    .end local v7           #opts:Landroid/os/Bundle;
    :cond_3
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-static {v9, v2, v12, v12, v7}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_0

    .line 1046
    .restart local v7       #opts:Landroid/os/Bundle;
    :cond_4
    iget-object v6, v0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 1047
    .local v6, intent:Landroid/content/Intent;
    const v9, 0x10104000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1053
    :try_start_0
    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v6, v7, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1055
    :catch_0
    move-exception v4

    .line 1056
    .local v4, e:Ljava/lang/SecurityException;
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recents does not have the permission to launch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1057
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 1058
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error launching activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1070
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v9}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V

    goto :goto_2
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1080
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    if-nez v0, :cond_1

    .line 1081
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1088
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1091
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->remove(Lcom/android/systemui/recent/TaskDescription;)V

    .line 1096
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1097
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    .line 1102
    :cond_3
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1104
    .local v1, am:Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    .line 1105
    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1108
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0096

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1109
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1110
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 400
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0, p1, p2, p0}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 544
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 547
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 548
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 549
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 550
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 554
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 557
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 560
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 520
    .local v0, root:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 523
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 26

    .prologue
    .line 615
    invoke-super/range {p0 .. p0}, Landroid/view/View;->onFinishInflate()V

    .line 617
    const-string v22, "STATUSBAR-RecentsPanelView"

    const-string v23, "onFinishInflate()"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const v22, 0x7f07002a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-interface/range {v22 .. v23}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setOnScrollListener(Ljava/lang/Runnable;)V

    .line 626
    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 630
    const v22, 0x7f070029

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 631
    const v22, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 634
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 635
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v22, :cond_6

    .line 636
    const v22, 0x7f07002c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    .line 637
    const v22, 0x7f07002d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 638
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v22, :cond_0

    .line 639
    const v22, 0x7f07002e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider01:Landroid/widget/LinearLayout;

    .line 640
    const v22, 0x7f070030

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    .line 650
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 651
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v22, :cond_7

    .line 652
    const v22, 0x7f07002f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    .line 658
    :cond_1
    :goto_1
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v22, :cond_8

    .line 659
    const v22, 0x7f070031

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 667
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/ViewGroup;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 668
    .local v10, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c0006

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 679
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 693
    const/4 v11, 0x0

    .line 694
    .local v11, mBlockRecentApplicationShortCut:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v9

    .line 695
    .local v9, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v9, :cond_3

    .line 696
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v22

    if-nez v22, :cond_3

    .line 697
    const-string v22, "RecentsPanelView"

    const-string v23, "mBlockRecentApplicationShortCut = true"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v11, 0x1

    .line 704
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    if-nez v11, :cond_b

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 706
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 708
    .local v18, shortcutAppList:Ljava/lang/String;
    sget-object v22, Lcom/android/systemui/recent/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    .line 709
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    .line 710
    .local v16, shortCutLayout:[Landroid/widget/LinearLayout;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v15, v0, [Landroid/widget/ImageView;

    .line 711
    .local v15, shortCutIcons:[Landroid/widget/ImageView;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 712
    .local v17, shortCutTexts:[Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 714
    .local v12, numIcons:I
    const/16 v23, 0x0

    const v22, 0x7f070034

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    .line 715
    const/16 v23, 0x1

    const v22, 0x7f070037

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    .line 716
    const/16 v23, 0x2

    const v22, 0x7f07003a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    .line 717
    const/16 v23, 0x3

    const v22, 0x7f07003d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    .line 719
    const/16 v23, 0x0

    const v22, 0x7f070035

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    .line 720
    const/16 v23, 0x1

    const v22, 0x7f070038

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    .line 721
    const/16 v23, 0x2

    const v22, 0x7f07003b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    .line 722
    const/16 v23, 0x3

    const v22, 0x7f07003e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    .line 724
    const/16 v23, 0x0

    const v22, 0x7f070036

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    .line 725
    const/16 v23, 0x1

    const v22, 0x7f070039

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    .line 726
    const/16 v23, 0x2

    const v22, 0x7f07003c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    .line 727
    const/16 v23, 0x3

    const v22, 0x7f07003f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    .line 729
    const/4 v6, -0x1

    .line 731
    .local v6, curFocus:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_a

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v7, v0, :cond_a

    .line 732
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 737
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 738
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 739
    .local v14, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_5

    .line 740
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 741
    .local v21, shortcutText:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 742
    .local v19, shortcutIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_5

    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_5

    .line 743
    aget-object v22, v16, v7

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 744
    aget-object v22, v16, v7

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setClickable(Z)V

    .line 745
    aget-object v22, v16, v7

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x5a

    const/16 v25, 0x5a

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 749
    aget-object v22, v15, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    aget-object v22, v15, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 751
    aget-object v22, v15, v7

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 752
    aget-object v22, v15, v7

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setPressed(Z)V

    .line 753
    aget-object v22, v15, v7

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setClickable(Z)V

    .line 754
    aget-object v22, v15, v7

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->clearFocus()V

    .line 756
    aget-object v22, v17, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    aget-object v22, v15, v7

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 759
    aget-object v22, v15, v7

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    add-int/lit8 v12, v12, 0x1

    .line 762
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_4

    .line 763
    aget-object v22, v16, v7

    aget-object v23, v16, v6

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 764
    aget-object v22, v16, v6

    aget-object v23, v16, v7

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 766
    :cond_4
    move v6, v7

    .line 731
    .end local v19           #shortcutIcon:Landroid/graphics/drawable/Drawable;
    .end local v21           #shortcutText:Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 643
    .end local v6           #curFocus:I
    .end local v7           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #mBlockRecentApplicationShortCut:Z
    .end local v12           #numIcons:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v15           #shortCutIcons:[Landroid/widget/ImageView;
    .end local v16           #shortCutLayout:[Landroid/widget/LinearLayout;
    .end local v17           #shortCutTexts:[Landroid/widget/TextView;
    .end local v18           #shortcutAppList:Ljava/lang/String;
    :cond_6
    const v22, 0x7f070040

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    .line 644
    const v22, 0x7f070041

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 645
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v22, :cond_0

    .line 646
    const v22, 0x7f070042

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider01:Landroid/widget/LinearLayout;

    .line 647
    const v22, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 654
    :cond_7
    const v22, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    goto/16 :goto_1

    .line 661
    :cond_8
    const v22, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_2

    .line 683
    .restart local v10       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v22, :cond_2

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDivider02:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 771
    .restart local v6       #curFocus:I
    .restart local v7       #i:I
    .restart local v9       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v11       #mBlockRecentApplicationShortCut:Z
    .restart local v12       #numIcons:I
    .restart local v13       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v15       #shortCutIcons:[Landroid/widget/ImageView;
    .restart local v16       #shortCutLayout:[Landroid/widget/LinearLayout;
    .restart local v17       #shortCutTexts:[Landroid/widget/TextView;
    .restart local v18       #shortcutAppList:Ljava/lang/String;
    :cond_a
    if-lez v12, :cond_b

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00b4

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    const v22, 0x7f070032

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 777
    .local v20, shortcutLine:Landroid/widget/ImageView;
    const v22, 0x7f070033

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 779
    .local v5, applicationShortcutLayout:Landroid/widget/LinearLayout;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 785
    .end local v5           #applicationShortcutLayout:Landroid/widget/LinearLayout;
    .end local v6           #curFocus:I
    .end local v7           #i:I
    .end local v12           #numIcons:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v15           #shortCutIcons:[Landroid/widget/ImageView;
    .end local v16           #shortCutLayout:[Landroid/widget/LinearLayout;
    .end local v17           #shortCutTexts:[Landroid/widget/TextView;
    .end local v18           #shortcutAppList:Ljava/lang/String;
    .end local v20           #shortcutLine:Landroid/widget/ImageView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 786
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    .line 787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 795
    .end local v9           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #mBlockRecentApplicationShortCut:Z
    :cond_c
    :goto_5
    return-void

    .line 789
    .restart local v9       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v10       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11       #mBlockRecentApplicationShortCut:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    check-cast v22, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v23, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1124
    const/4 v0, 0x1

    .line 1126
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1076
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1173
    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 1174
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1182
    :cond_1
    :goto_0
    return v0

    .line 1179
    :cond_2
    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    .line 1182
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTaskLoadingCancelled()V
    .locals 2

    .prologue
    .line 941
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onTaskLoadingCancelled()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 946
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 948
    :cond_0
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .parameter "td"

    .prologue
    .line 854
    const-string v5, "STATUSBAR-RecentsPanelView"

    const-string v6, "onTaskThumbnailLoaded()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    monitor-enter p1

    .line 856
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_4

    .line 857
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    .line 858
    .local v1, container:Landroid/view/ViewGroup;
    instance-of v5, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    .line 859
    const v5, 0x7f07002b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #container:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 863
    .restart local v1       #container:Landroid/view/ViewGroup;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 864
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 865
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v5, :cond_3

    .line 866
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 867
    .local v2, h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_3

    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_3

    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, animateShow:Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 874
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 876
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v5, :cond_2

    .line 877
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mRecentPanelColorExtract:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v5}, Lcom/android/systemui/recent/RecentTasksLoader;->isFactoryMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 878
    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->bgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getDominantColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 880
    :cond_1
    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->bgFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 882
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 863
    .end local v0           #animateShow:Z
    .end local v2           #h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 888
    .end local v1           #container:Landroid/view/ViewGroup;
    .end local v3           #i:I
    .end local v4           #v:Landroid/view/View;
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 890
    return-void

    .line 888
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onTasksLoaded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 981
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    invoke-interface {v0}, Lcom/android/systemui/recent/IRecentsUI;->isActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 984
    :cond_0
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onUiHidden()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 526
    const-string v2, "STATUSBAR-RecentsPanelView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUiHidden() - mShowing:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mRecentTaskDescriptions != null:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 529
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 533
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 526
    goto :goto_0
.end method

.method public onWindowAnimationStart()V
    .locals 2

    .prologue
    .line 921
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onWindowAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    .line 925
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->animateInIconOfFirstTask()V

    .line 926
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 957
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 958
    return-void
.end method

.method public refreshViews()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 952
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements()V

    .line 953
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 954
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 799
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 584
    return-void
.end method

.method public setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V
    .locals 0
    .parameter "recentsUi"

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;

    .line 1602
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    .line 409
    return-void
.end method

.method public show(ZLjava/util/ArrayList;ZZ)V
    .locals 4
    .parameter "show"
    .parameter
    .parameter "firstScreenful"
    .parameter "animateIconOfFirstTask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, recentTaskDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 415
    const/4 p2, 0x0

    .line 416
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 417
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 422
    :goto_0
    if-eqz p1, :cond_2

    .line 424
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 425
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :goto_1
    return-void

    .line 419
    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 420
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    goto :goto_0

    .line 431
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 432
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    goto :goto_1

    .line 435
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    goto :goto_1
.end method

.method public simulateClick(I)Z
    .locals 2
    .parameter "persistentTaskId"

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v0

    .line 1008
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1010
    const/4 v1, 0x1

    .line 1012
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 4

    .prologue
    .line 587
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 588
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 589
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 591
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v2, :cond_0

    .line 592
    const v2, 0x7f0c00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 594
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_2

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    .line 597
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v0

    .line 600
    .local v0, mAssistApp:I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 601
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 605
    .end local v0           #mAssistApp:I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    .line 607
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 611
    :cond_2
    return-void
.end method
