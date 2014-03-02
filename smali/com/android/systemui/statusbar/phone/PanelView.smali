.class public Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# static fields
.field public static final BRAKES:Z

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static mRawHeight:I

.field private static mRawWidth:I


# instance fields
.field private mAbsPos:[I

.field private mAccel:F

.field private final mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBrakingSpeedPx:F

.field private mClosing:Z

.field private mCollapseAccelPx:F

.field private mCollapseBrakingDistancePx:F

.field private mCollapseMinDisplayFraction:F

.field private mExpandAccelPx:F

.field private mExpandBrakingDistancePx:F

.field private mExpandMinDisplayFraction:F

.field private mExpandedFraction:F

.field private mExpandedHeight:F

.field protected mFinalTouchY:F

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxOutputVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field private mFlingGestureMinDistPx:F

.field private mFullHeight:I

.field private mHandleView:Landroid/view/View;

.field protected mInitialTouchY:F

.field private mJustPeeked:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mRubberbanding:Z

.field private mRubberbandingEnabled:Z

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field private final mStopAnimator:Ljava/lang/Runnable;

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mTouchOffset:F

.field private mTracking:Z

.field private mVel:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    .line 44
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x4316

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    .line 69
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseBrakingDistancePx:F

    .line 70
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandBrakingDistancePx:F

    .line 71
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    .line 76
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 77
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    .line 248
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PanelView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PanelView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private animationTick(J)V
    .locals 13
    .parameter "dtms"

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 140
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v6}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_7

    .line 144
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 147
    new-instance v6, Landroid/animation/TimeAnimator;

    invoke-direct {v6}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 148
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v6, v9}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 150
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 152
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v6}, Landroid/animation/TimeAnimator;->start()V

    .line 154
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    neg-float v9, v9

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    .line 157
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v6, :cond_3

    .line 158
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 243
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v6, v8

    .line 154
    goto :goto_0

    .line 159
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v6, v6, v11

    if-nez v6, :cond_5

    .line 161
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v9

    div-float/2addr v6, v9

    const/high16 v9, 0x3f00

    cmpg-float v6, v6, v9

    if-gez v6, :cond_4

    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_2

    .line 163
    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_6

    :goto_3
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_1

    :cond_6
    move v7, v8

    goto :goto_3

    .line 165
    :cond_7
    const-wide/16 v9, 0x0

    cmp-long v6, p1, v9

    if-lez v6, :cond_1

    .line 166
    long-to-float v6, p1

    const v9, 0x3a83126f

    mul-float v2, v6, v9

    .line 167
    .local v2, dt:F
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "tick: v=%.2fpx/s dt=%.4fs"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_8
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "tick: before: h=%d"

    new-array v9, v7, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v3

    .line 173
    .local v3, fh:F
    const/4 v5, 0x0

    .line 174
    .local v5, isFullHeight:Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 175
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_11

    sget v6, Lcom/android/systemui/statusbar/phone/PanelView;->mRawHeight:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-nez v6, :cond_11

    .line 176
    const/4 v5, 0x1

    .line 180
    :cond_a
    :goto_4
    sget-object v6, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFullHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " fh:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Orientation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    .line 193
    .local v0, braking:Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_12

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    neg-float v6, v6

    :goto_5
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    .line 196
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    mul-float/2addr v9, v2

    add-float/2addr v6, v9

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 198
    if-eqz v0, :cond_14

    .line 199
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_13

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v9, v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_13

    .line 200
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 212
    :cond_b
    :goto_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    mul-float/2addr v9, v2

    add-float v4, v6, v9

    .line 214
    .local v4, h:F
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v6, :cond_c

    cmpg-float v6, v4, v3

    if-gez v6, :cond_c

    .line 215
    move v4, v3

    .line 218
    :cond_c
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v9, "tick: new h=%d closing=%s"

    new-array v10, v12, [Ljava/lang/Object;

    float-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_16

    const-string v6, "true"

    :goto_7
    aput-object v6, v10, v7

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_d
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 222
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v6, p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 226
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mQuickpanelAnimationStopWorkaround:Z

    if-eqz v6, :cond_17

    .line 227
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_e

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_10

    :cond_e
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v6, :cond_1

    :cond_f
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_1

    .line 230
    :cond_10
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 177
    .end local v0           #braking:Z
    .end local v4           #h:F
    :cond_11
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v12, :cond_a

    sget v6, Lcom/android/systemui/statusbar/phone/PanelView;->mRawWidth:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-nez v6, :cond_a

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 193
    .restart local v0       #braking:Z
    :cond_12
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    goto/16 :goto_5

    .line 201
    :cond_13
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v6, :cond_b

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_b

    .line 202
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto :goto_6

    .line 205
    :cond_14
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_15

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v9, v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_15

    .line 206
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto/16 :goto_6

    .line 207
    :cond_15
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v6, :cond_b

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_b

    .line 208
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto/16 :goto_6

    .line 218
    .restart local v4       #h:F
    :cond_16
    const-string v6, "false"

    goto/16 :goto_7

    .line 233
    :cond_17
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_1a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_18

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_1a

    :cond_18
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v6, :cond_19

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    :cond_19
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_1

    .line 236
    :cond_1a
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method private calculateWidthAndHeight()V
    .locals 5

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 573
    .local v0, disp:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 574
    .local v1, dispMetrix:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 575
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/systemui/statusbar/phone/PanelView;->mRawWidth:I

    .line 576
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/android/systemui/statusbar/phone/PanelView;->mRawHeight:I

    .line 578
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRawWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/phone/PanelView;->mRawWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRawHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/phone/PanelView;->mRawHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method private getFullHeight()F
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, -0x2

    .line 511
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-gtz v0, :cond_1

    .line 512
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing measure() since fullHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->measure(II)V

    .line 516
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v0, v0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    .line 256
    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    .line 257
    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    .line 258
    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    .line 260
    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    .line 262
    const v1, 0x7f0e0027

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseMinDisplayFraction:F

    .line 263
    const v1, 0x7f0e0028

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandMinDisplayFraction:F

    .line 265
    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    .line 266
    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    .line 268
    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    .line 270
    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    .line 272
    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    sub-float v1, v2, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    .line 275
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto :goto_0
.end method

.method private runPeekAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "peek to height=%.1f"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2

    .line 132
    const-string v0, "expandedHeight"

    new-array v1, v4, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 281
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 282
    .local v1, deltaY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 284
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 285
    return-void
.end method


# virtual methods
.method public final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "fmt"
    .parameter "args"

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 549
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collapse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 552
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 554
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    .line 555
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    neg-float v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 557
    :cond_1
    return-void
.end method

.method public expand()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 560
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 563
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 564
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 565
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "skipping expansion: is expanded"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public fling(FZ)V
    .locals 4
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "fling: vel=%.3f, this=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 426
    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 427
    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    .line 429
    :cond_2
    return-void
.end method

.method public getExpandedFraction()F
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-object v0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    .line 435
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 296
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 300
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickpanelAnimationStopWorkaround:Z

    if-nez v0, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->calculateWidthAndHeight()V

    .line 420
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 486
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "onLayout: changed=%s, bottom=%d eh=%d fh=%d"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v0, "T"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 488
    return-void

    .line 486
    :cond_1
    const-string v0, "f"

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 453
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 455
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "onMeasure(%d, %d) -> (%d, %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMeasuredHeight()I

    move-result v0

    .line 460
    .local v0, newHeight:I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-eq v0, v1, :cond_1

    .line 461
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    .line 463
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 465
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 468
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    float-to-int v1, v1

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setMeasuredDimension(II)V

    .line 471
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 443
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .parameter "panelBar"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 545
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1
    .parameter "frac"

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 521
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 4
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 475
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "setExpandedHeight(%.1f)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    .line 480
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 482
    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 6
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    .line 492
    .local v0, fh:F
    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    .line 496
    :cond_0
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 497
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v1, :cond_3

    :cond_2
    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    move p1, v0

    .line 498
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 500
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v3, "setExpansion: height=%.1f fh=%.1f tracking=%s rubber=%s"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_5

    const-string v1, "T"

    :goto_0
    aput-object v1, v4, v5

    const/4 v5, 0x3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v1, :cond_6

    const-string v1, "T"

    :goto_1
    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    .line 507
    const/high16 v3, 0x3f80

    cmpl-float v1, v0, v2

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 508
    return-void

    .line 500
    :cond_5
    const-string v1, "f"

    goto :goto_0

    :cond_6
    const-string v1, "f"

    goto :goto_1

    .line 507
    :cond_7
    div-float v1, p1, v0

    goto :goto_2
.end method

.method public setRubberbandingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    .line 124
    return-void
.end method
