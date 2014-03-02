.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/animation/Animator$AnimatorListener;


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

.field static final DEBUG:Z = false

.field private static final GOOGLEBUTTON_3RDAPP:I = 0x2

.field private static final GOOGLEBUTTON_DEFAULT:I = 0x0

.field private static final GOOGLEBUTTON_NONE:I = 0x3

.field private static final GOOGLEBUTTON_SEARCH:I = 0x1

.field public static final INTENT_ACTION_TASK_MANAGER:Ljava/lang/String; = "com.sec.android.app.controlpanel.MAIN"

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern; = null

.field private static final RECENTSPANEL_CLOSE:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_CLOSE"

.field private static final RECENTSPANEL_OPEN:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_OPEN"

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"

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

.field private mNumItemsWaitingForThumbnailsAndIcons:I

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

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsGoogleButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShortcutComponentNames:[Ljava/lang/String;

.field private mShowRecentApplicationShortCut:Z

.field private mShowRecentGoogleNowButton:Z

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

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
    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 338
    sget-object v2, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 341
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    .line 342
    invoke-static {p1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 343
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 346
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    .line 350
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recent/RecentsPanelView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

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
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method private animateInIconOfFirstTask()V
    .locals 15

    .prologue
    .line 890
    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v11}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v11

    if-nez v11, :cond_2

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    sub-long/2addr v11, v13

    long-to-int v8, v11

    .line 894
    .local v8, timeSinceWindowAnimation:I
    const/16 v6, 0x96

    .line 895
    .local v6, minStartDelay:I
    const/4 v11, 0x0

    rsub-int v12, v8, 0x96

    const/16 v13, 0x96

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 897
    .local v7, startDelay:I
    const/16 v2, 0xfa

    .line 898
    .local v2, duration:I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 899
    .local v3, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3fc0

    invoke-direct {v1, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 900
    .local v1, cubic:Landroid/animation/TimeInterpolator;
    iget-object v11, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-static {v11}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 902
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

    .line 903
    .local v9, v:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 904
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

    .line 907
    .local v10, vpa:Landroid/view/ViewPropertyAnimator;
    new-instance v11, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-direct {v11, v10, v9}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 902
    .end local v10           #vpa:Landroid/view/ViewPropertyAnimator;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 910
    .end local v9           #v:Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 911
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 913
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

    .line 1385
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v2

    .line 1388
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 1389
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1390
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 1391
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1405
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #component:Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 1396
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1398
    const/4 v3, 0x1

    goto :goto_0

    .line 1400
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 1405
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
    .line 806
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 807
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 808
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 809
    return-void
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 1559
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1561
    .local v1, mAM:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 1563
    .local v2, mIconDpi:I
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1568
    .local v3, result:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 1564
    .end local v3           #result:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 1565
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    .restart local v3       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private isTaskManagerInstalled()Z
    .locals 5

    .prologue
    .line 1368
    const/4 v3, 0x0

    .line 1369
    .local v3, retVal:Z
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1370
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1373
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1374
    const/4 v3, 0x1

    .line 1376
    :cond_0
    return v3
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "ri"

    .prologue
    .line 1536
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1538
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    .line 1539
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1540
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1554
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 1544
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 1545
    .local v2, iconRes:I
    if-eqz v2, :cond_2

    .line 1546
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1547
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1554
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconRes:I
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1551
    :catch_0
    move-exception v1

    .line 1552
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
    .line 382
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 383
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 384
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 385
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 386
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
    .line 959
    .local p1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "refreshRecentTasksList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 962
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 966
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method private replaceGoogleButtonTextAndIcon(I)V
    .locals 3
    .parameter "assist_type"

    .prologue
    const v1, 0x7f020204

    const/4 v2, 0x0

    .line 1409
    if-nez p1, :cond_3

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1411
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c0140

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1418
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 1431
    :cond_0
    :goto_1
    return-void

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1419
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 1423
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1424
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonToSearchTextAndIcon()V

    goto :goto_1

    .line 1425
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1426
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTo3rdAppTextAndIcon()V

    goto :goto_1

    .line 1428
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private replaceGoogleButtonTo3rdAppTextAndIcon()V
    .locals 24

    .prologue
    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1450
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "search"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-virtual/range {v20 .. v23}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v12

    .line 1452
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 1453
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1454
    .local v16, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_0

    .line 1455
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1458
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

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 1462
    .local v13, metaData:Landroid/os/Bundle;
    if-eqz v13, :cond_1

    const-string v20, "com.android.systemui.action_assist_icon"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .local v11, iconResId:I
    if-eqz v11, :cond_1

    .line 1464
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v17

    .line 1465
    .local v17, res:Landroid/content/res/Resources;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1470
    .end local v11           #iconResId:I
    .end local v17           #res:Landroid/content/res/Resources;
    .local v6, buttonIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020205

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1472
    .local v4, SearchIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 1473
    .local v19, width:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1474
    .local v10, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 1476
    .local v18, scale:F
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1478
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1479
    sget-boolean v20, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v20, :cond_2

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1500
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

    .line 1467
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

    .line 1482
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

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1483
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

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1493
    .end local v4           #SearchIcon:Landroid/graphics/drawable/Drawable;
    .end local v6           #buttonIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #height:I
    .end local v13           #metaData:Landroid/os/Bundle;
    .end local v18           #scale:F
    .end local v19           #width:I
    :catch_0
    move-exception v9

    .line 1494
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "RecentsPanelView"

    const-string v21, " (NameNotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1486
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

    .line 1487
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #buttonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1488
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

    .line 1490
    .local v8, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1495
    .end local v4           #SearchIcon:Landroid/graphics/drawable/Drawable;
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    .end local v10           #height:I
    .end local v13           #metaData:Landroid/os/Bundle;
    .end local v18           #scale:F
    .end local v19           #width:I
    :catch_1
    move-exception v14

    .line 1496
    .local v14, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "RecentsPanelView"

    const-string v21, " (Resources.NotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private replaceGoogleButtonToSearchTextAndIcon()V
    .locals 3

    .prologue
    const v2, 0x7f020205

    const/4 v1, 0x0

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1435
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1442
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private replaceRemoveAllButtonTextAndIcon()V
    .locals 3

    .prologue
    const v1, 0x7f020203

    const/4 v2, 0x0

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1520
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c0141

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1527
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 1532
    :cond_0
    :goto_1
    return-void

    .line 1524
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1528
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method private replaceTaskButtonTextAndIcon()V
    .locals 3

    .prologue
    const v1, 0x7f020206

    const/4 v2, 0x0

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1504
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c013f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1511
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 1516
    :cond_0
    :goto_1
    return-void

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1512
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 453
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 444
    const-string v2, "STATUSBAR-RecentsPanelView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIfReady() - mWaitingToShow:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mRecentTaskDescriptions:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    .line 450
    :cond_0
    return-void

    .line 444
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showImpl(Z)V
    .locals 8
    .parameter "show"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 462
    const-string v5, "STATUSBAR-RecentsPanelView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showImpl() show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 466
    if-eqz p1, :cond_8

    .line 470
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v6, "recentapps"

    invoke-static {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 474
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 475
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 522
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    :goto_0
    return-void

    .line 482
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    .line 484
    .local v2, noApps:Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 485
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v2, :cond_6

    move v5, v4

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_2

    .line 488
    if-eqz v2, :cond_7

    .line 489
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 494
    :cond_2
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_4

    .line 495
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    .line 498
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v5, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v1

    .line 500
    .local v1, mAssistApp:I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 502
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 505
    .end local v1           #mAssistApp:I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    .line 510
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 511
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    .line 512
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    goto :goto_0

    .end local v2           #noApps:Z
    :cond_5
    move v2, v4

    .line 482
    goto :goto_1

    .line 485
    .restart local v2       #noApps:Z
    :cond_6
    const/4 v5, 0x4

    goto :goto_2

    .line 491
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 515
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v2           #noApps:Z
    :cond_8
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 517
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 518
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1122
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 1125
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .parameter "h"
    .parameter "icon"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 812
    if-eqz p2, :cond_1

    .line 813
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    if-eqz p4, :cond_0

    .line 816
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 819
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 5
    .parameter "h"
    .parameter "thumbnail"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 825
    if-eqz p2, :cond_4

    .line 829
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 833
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 836
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    .line 837
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 846
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 847
    if-eqz p4, :cond_2

    .line 848
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f05000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 851
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 853
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 855
    :cond_4
    return-void

    .line 839
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 840
    .local v1, scaleMatrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 841
    .local v0, scale:F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 842
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 843
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 986
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 989
    .local v0, items:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 992
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 995
    .local v1, numRecentApps:I
    :goto_2
    if-nez v1, :cond_3

    .line 996
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1002
    .local v2, recentAppsAccessibilityDescription:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1003
    return-void

    .end local v0           #items:I
    .end local v1           #numRecentApps:I
    .end local v2           #recentAppsAccessibilityDescription:Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 986
    goto :goto_0

    .line 989
    .restart local v0       #items:I
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    move v1, v3

    .line 992
    goto :goto_2

    .line 999
    .restart local v1       #numRecentApps:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #recentAppsAccessibilityDescription:Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 2

    .prologue
    .line 926
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "clearRecentTasksList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 931
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    .line 933
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoHome()V

    .line 543
    return-void
.end method

.method public dismissAndGoBack()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 547
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 574
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 575
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 576
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 578
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "selectedView"
    .parameter "anchorView"
    .parameter "thumbnailView"

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1182
    .end local p2
    :goto_0
    return-void

    .line 1151
    .restart local p2
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1152
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1154
    .local v0, popup:Landroid/widget/PopupMenu;
    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 1155
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1156
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1175
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1181
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 17
    .parameter "view"

    .prologue
    .line 1019
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 1020
    .local v6, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v1, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1021
    .local v1, ad:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1022
    .local v4, context:Landroid/content/Context;
    const-string v13, "activity"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1024
    .local v2, am:Landroid/app/ActivityManager;
    iget-object v3, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 1026
    .local v3, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v14, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getWidth()I

    move-result v14

    if-ne v13, v14, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iget-object v14, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getHeight()I

    move-result v14

    if-ne v13, v14, :cond_3

    .line 1028
    const/4 v12, 0x0

    .line 1034
    .local v12, usingDrawingCache:Z
    :goto_0
    if-nez v3, :cond_4

    const/4 v9, 0x0

    .line 1040
    .local v9, opts:Landroid/os/Bundle;
    :goto_1
    const/16 v13, 0x14

    invoke-virtual {v2, v13}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 1041
    .local v11, runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1042
    .local v10, rt:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v13, v1, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iget v14, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v13, v14, :cond_0

    .line 1043
    iget v13, v10, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    invoke-static {v13}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v13

    const/high16 v14, 0x200

    if-ne v13, v14, :cond_0

    .line 1044
    const/4 v9, 0x0

    .line 1051
    .end local v10           #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 1052
    iget v13, v1, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v13, :cond_5

    .line 1054
    iget v13, v1, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14, v9}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1070
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/android/systemui/recent/RecentsActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/recent/RecentsActivity;->moveTaskToBack(Z)Z

    .line 1072
    if-eqz v12, :cond_2

    .line 1073
    iget-object v13, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1075
    :cond_2
    return-void

    .line 1030
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #opts:Landroid/os/Bundle;
    .end local v11           #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12           #usingDrawingCache:Z
    :cond_3
    iget-object v13, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1031
    iget-object v13, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1032
    const/4 v12, 0x1

    .restart local v12       #usingDrawingCache:Z
    goto :goto_0

    .line 1034
    :cond_4
    iget-object v13, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v3, v14, v15, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    goto :goto_1

    .line 1057
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #opts:Landroid/os/Bundle;
    .restart local v11       #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    iget-object v8, v1, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 1058
    .local v8, intent:Landroid/content/Intent;
    const v13, 0x10104000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1063
    :try_start_0
    new-instance v13, Landroid/os/UserHandle;

    const/4 v14, -0x2

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v8, v9, v13}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1065
    :catch_0
    move-exception v5

    .line 1066
    .local v5, e:Ljava/lang/SecurityException;
    const-string v13, "RecentsPanelView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Recents does not have the permission to launch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 1082
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1083
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    if-nez v0, :cond_1

    .line 1084
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

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1090
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1094
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->removeLoadedTasks(Lcom/android/systemui/recent/TaskDescription;)V

    .line 1100
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1101
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    .line 1106
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1108
    .local v1, am:Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    .line 1109
    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1112
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0093

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1114
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1115
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 390
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 363
    .local v0, scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v1

    return v1

    .line 365
    .end local v0           #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 550
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 553
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 554
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 555
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 556
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 560
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 563
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 566
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 527
    .local v0, root:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 528
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 530
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 27

    .prologue
    .line 627
    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 629
    const-string v23, "STATUSBAR-RecentsPanelView"

    const-string v24, "onFinishInflate()"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const v23, 0x7f0900ad

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 632
    const v23, 0x7f0900ef

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recent/StatusBarTouchProxy;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 633
    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 635
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v15, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 637
    .local v15, scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 638
    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 643
    const v23, 0x7f09008f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 644
    const v23, 0x7f0900af

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 648
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v23, :cond_6

    .line 649
    const v23, 0x7f090128

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    .line 650
    const v23, 0x7f090129

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 655
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 656
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v23, :cond_7

    .line 657
    const v23, 0x7f09012a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    .line 663
    :cond_0
    :goto_1
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v23, :cond_8

    .line 664
    const v23, 0x7f09012b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 669
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 671
    .local v10, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e005d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 681
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 693
    const v23, 0x7f090119

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    .line 697
    const/4 v11, 0x0

    .line 698
    .local v11, mBlockRecentApplicationShortCut:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v9

    .line 699
    .local v9, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v9, :cond_2

    .line 700
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v23

    if-nez v23, :cond_2

    .line 701
    const-string v23, "RecentsPanelView"

    const-string v24, "mBlockRecentApplicationShortCut = true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v11, 0x1

    .line 707
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    if-nez v11, :cond_a

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 709
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 710
    .local v19, shortcutAppList:Ljava/lang/String;
    sget-object v23, Lcom/android/systemui/recent/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    .line 711
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    .line 712
    .local v17, shortCutLayout:[Landroid/widget/LinearLayout;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v16, v0

    .line 713
    .local v16, shortCutIcons:[Landroid/widget/ImageView;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 714
    .local v18, shortCutTexts:[Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 716
    .local v12, numIcons:I
    const/16 v24, 0x0

    const v23, 0x7f09011c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 717
    const/16 v24, 0x1

    const v23, 0x7f09011f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 718
    const/16 v24, 0x2

    const v23, 0x7f090122

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 719
    const/16 v24, 0x3

    const v23, 0x7f090125

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 721
    const/16 v24, 0x0

    const v23, 0x7f09011d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 722
    const/16 v24, 0x1

    const v23, 0x7f090120

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 723
    const/16 v24, 0x2

    const v23, 0x7f090123

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 724
    const/16 v24, 0x3

    const v23, 0x7f090126

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 726
    const/16 v24, 0x0

    const v23, 0x7f09011e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 727
    const/16 v24, 0x1

    const v23, 0x7f090121

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 728
    const/16 v24, 0x2

    const v23, 0x7f090124

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 729
    const/16 v24, 0x3

    const v23, 0x7f090127

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 731
    const/4 v6, -0x1

    .line 733
    .local v6, curFocus:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_9

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v7, v0, :cond_9

    .line 734
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 737
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 738
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 739
    .local v14, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_4

    .line 740
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 741
    .local v22, shortcutText:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 742
    .local v20, shortcutIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_4

    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_4

    .line 743
    aget-object v23, v17, v7

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    aget-object v23, v17, v7

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 745
    aget-object v23, v17, v7

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x5a

    const/16 v26, 0x5a

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 749
    aget-object v23, v16, v7

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    aget-object v23, v16, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 751
    aget-object v23, v16, v7

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 752
    aget-object v23, v16, v7

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 753
    aget-object v23, v16, v7

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 754
    aget-object v23, v16, v7

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->clearFocus()V

    .line 756
    aget-object v23, v18, v7

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    aget-object v23, v16, v7

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 759
    aget-object v23, v16, v7

    new-instance v24, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    add-int/lit8 v12, v12, 0x1

    .line 762
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v6, v0, :cond_3

    .line 763
    aget-object v23, v17, v7

    aget-object v24, v17, v6

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    .line 764
    aget-object v23, v17, v6

    aget-object v24, v17, v7

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    .line 766
    :cond_3
    move v6, v7

    .line 733
    .end local v20           #shortcutIcon:Landroid/graphics/drawable/Drawable;
    .end local v22           #shortcutText:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 640
    .end local v6           #curFocus:I
    .end local v7           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #mBlockRecentApplicationShortCut:Z
    .end local v12           #numIcons:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v15           #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    .end local v16           #shortCutIcons:[Landroid/widget/ImageView;
    .end local v17           #shortCutLayout:[Landroid/widget/LinearLayout;
    .end local v18           #shortCutTexts:[Landroid/widget/TextView;
    .end local v19           #shortcutAppList:Ljava/lang/String;
    :cond_5
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "missing Recents[Horizontal]ScrollView"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 652
    .restart local v15       #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_6
    const v23, 0x7f09012c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    .line 653
    const v23, 0x7f09012d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    goto/16 :goto_0

    .line 659
    :cond_7
    const v23, 0x7f09012e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    goto/16 :goto_1

    .line 666
    :cond_8
    const v23, 0x7f09012f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_2

    .line 771
    .restart local v6       #curFocus:I
    .restart local v7       #i:I
    .restart local v9       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v10       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11       #mBlockRecentApplicationShortCut:Z
    .restart local v12       #numIcons:I
    .restart local v13       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v16       #shortCutIcons:[Landroid/widget/ImageView;
    .restart local v17       #shortCutLayout:[Landroid/widget/LinearLayout;
    .restart local v18       #shortCutTexts:[Landroid/widget/TextView;
    .restart local v19       #shortcutAppList:Ljava/lang/String;
    :cond_9
    if-lez v12, :cond_a

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e0060

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    const v23, 0x7f09011a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 776
    .local v21, shortcutLine:Landroid/widget/ImageView;
    const v23, 0x7f09011b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 778
    .local v5, applicationShortcutLayout:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 786
    .end local v5           #applicationShortcutLayout:Landroid/widget/LinearLayout;
    .end local v6           #curFocus:I
    .end local v7           #i:I
    .end local v9           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #mBlockRecentApplicationShortCut:Z
    .end local v12           #numIcons:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #shortCutIcons:[Landroid/widget/ImageView;
    .end local v17           #shortCutLayout:[Landroid/widget/LinearLayout;
    .end local v18           #shortCutTexts:[Landroid/widget/TextView;
    .end local v19           #shortcutAppList:Ljava/lang/String;
    .end local v21           #shortcutLine:Landroid/widget/ImageView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 787
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    .line 788
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 795
    :cond_b
    :goto_4
    return-void

    .line 790
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    check-cast v23, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v24, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1129
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_pen_gesture"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1130
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return v0

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v1, :cond_0

    .line 1139
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 1078
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1079
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1189
    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 1190
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1198
    :cond_1
    :goto_0
    return v0

    .line 1195
    :cond_2
    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    .line 1198
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTaskLoadingCancelled()V
    .locals 2

    .prologue
    .line 937
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onTaskLoadingCancelled()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 942
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 944
    :cond_0
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .parameter "td"

    .prologue
    .line 858
    const-string v5, "STATUSBAR-RecentsPanelView"

    const-string v6, "onTaskThumbnailLoaded()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    monitor-enter p1

    .line 860
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 861
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 862
    .local v1, container:Landroid/view/ViewGroup;
    instance-of v5, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    .line 863
    const v5, 0x7f0900ae

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #container:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 867
    .restart local v1       #container:Landroid/view/ViewGroup;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 868
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 869
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v5, :cond_1

    .line 870
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 871
    .local v2, h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_1

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, animateShow:Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 878
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 879
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 880
    iget v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 867
    .end local v0           #animateShow:Z
    .end local v2           #h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 885
    .end local v1           #container:Landroid/view/ViewGroup;
    .end local v3           #i:I
    .end local v4           #v:Landroid/view/View;
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 887
    return-void

    .line 885
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
    .line 970
    .local p1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onTasksLoaded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 975
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 980
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->isActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 983
    :cond_0
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public onUiHidden()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 533
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

    .line 534
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 535
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 539
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 533
    goto :goto_0
.end method

.method public onWindowAnimationStart()V
    .locals 2

    .prologue
    .line 917
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onWindowAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    .line 921
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->animateInIconOfFirstTask()V

    .line 922
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 953
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 954
    return-void
.end method

.method public refreshViews()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements()V

    .line 949
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 950
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1206
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1209
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1214
    :cond_1
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 2
    .parameter "minAlpha"

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 801
    .local v0, scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 803
    .end local v0           #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_0
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 597
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .parameter "statusBarView"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 593
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    .line 402
    return-void
.end method

.method public show(ZLjava/util/ArrayList;ZZ)V
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 407
    const-string v1, "STATUSBAR-RecentsPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show() - show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", firstScreenful:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", animateIconOfFirstTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 411
    const/4 p2, 0x0

    .line 412
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 413
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 418
    :goto_0
    if-eqz p1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 421
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0, v5}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :goto_1
    return-void

    .line 415
    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 416
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    goto :goto_0

    .line 429
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.recent.RECENTSPANEL_OPEN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    iput-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 433
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 434
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    goto :goto_1

    .line 437
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.recent.RECENTSPANEL_CLOSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    invoke-direct {p0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    goto :goto_1
.end method

.method public simulateClick(I)Z
    .locals 3
    .parameter "persistentTaskId"

    .prologue
    .line 1006
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v2, v2, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v2, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 1009
    .local v0, scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v1

    .line 1010
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1011
    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1012
    const/4 v2, 0x1

    .line 1015
    .end local v0           #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 4

    .prologue
    .line 600
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 601
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 602
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 605
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    .line 608
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v0

    .line 611
    .local v0, mAssistApp:I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 612
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 616
    .end local v0           #mAssistApp:I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    .line 618
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 623
    :cond_1
    return-void
.end method
