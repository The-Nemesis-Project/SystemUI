.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# static fields
.field private static final BACKGROUND_ALPHA:F = 0.5f

.field private static DEBUG:Z = false

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0x1f4

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GlobalScreenshot"

.field private static final is3LMAllowed:Z

.field private static mEndAnimation:I


# instance fields
.field private mActivtyMngr:Landroid/app/ActivityManager;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

.field private mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

.field private mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

.field private mContext:Landroid/content/Context;

.field private mDirection:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mLeftToRight:I

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mRightToLeft:I

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field final mShutterEffectLock:Ljava/lang/Object;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSweepDirection:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorDuration:J

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const-wide/16 v4, 0x64

    iput-wide v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J

    .line 523
    iput v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftToRight:I

    .line 524
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightToLeft:I

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    .line 985
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    .line 541
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 542
    .local v9, r:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 543
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 547
    .local v8, layoutInflater:Landroid/view/LayoutInflater;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 548
    const v0, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 549
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 550
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f09001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 551
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f09001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 552
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 562
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7df

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 570
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 571
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 572
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 574
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 575
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 576
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 579
    const v0, 0x1050006

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 583
    const v0, 0x7f0e002b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 584
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 587
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    .line 588
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->load(I)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    .line 591
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 592
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 476
    sget v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 476
    sget v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 476
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirection:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .prologue
    .line 1101
    const v3, 0x3e9aca6b

    .line 1103
    .local v3, flashPeakDurationPct:F
    const v2, 0x3f1aca6b

    .line 1104
    .local v2, flashDurationPct:F
    sget-boolean v5, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GlobalScreenshot"

    const-string v6, "GlobalScreenshot createScreenshotDropInAnimation() flashPeakDurationPct = 0.30232558, flashDurationPct = 0.60465115"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_0
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1116
    .local v1, flashAlphaInterpolator:Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1126
    .local v4, scaleInterpolator:Landroid/view/animation/Interpolator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1127
    .local v0, anim:Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x1ae

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1128
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1147
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v5, p0, v4, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1164
    return-object v0

    .line 1126
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    const v10, 0x3ee66666

    const/high16 v9, 0x4000

    .line 1169
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1170
    .local v0, anim:Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0x1f4

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1171
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1180
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1182
    :cond_0
    const-wide/16 v7, 0x140

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1183
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1238
    :goto_0
    return-object v0

    .line 1198
    :cond_1
    const v5, 0x3f5c4771

    .line 1200
    .local v5, scaleDurationPct:F
    new-instance v6, Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$14;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1212
    .local v6, scaleInterpolator:Landroid/view/animation/Interpolator;
    int-to-float v7, p1

    iget v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float v3, v7, v9

    .line 1213
    .local v3, halfScreenWidth:F
    int-to-float v7, p2

    iget v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float v2, v7, v9

    .line 1214
    .local v2, halfScreenHeight:F
    const/4 v4, 0x0

    .line 1215
    .local v4, offsetPct:F
    new-instance v1, Landroid/graphics/PointF;

    neg-float v7, v3

    mul-float v8, v10, v3

    add-float/2addr v7, v8

    neg-float v8, v2

    mul-float v9, v10, v2

    add-float/2addr v8, v9

    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1218
    .local v1, finalPos:Landroid/graphics/PointF;
    sget-boolean v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "GlobalScreenshot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GlobalScreenshot halfScreenWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", halfScreenHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_2
    const-wide/16 v7, 0x1ae

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1222
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$15;

    invoke-direct {v7, p0, v6, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$15;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 1169
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 623
    packed-switch p1, :pswitch_data_0

    .line 631
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 625
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 627
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 629
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getGlobalSystemUiVisibility(Landroid/view/WindowManager;)I
    .locals 5
    .parameter "windowManager"

    .prologue
    .line 1264
    const/4 v1, 0x0

    .line 1266
    .local v1, visibility:I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getGlobalSystemUiVisibility"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1267
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1273
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 1271
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1270
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1269
    :catch_2
    move-exception v2

    goto :goto_0

    .line 1268
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private isAvailableCapacity()Z
    .locals 17

    .prologue
    .line 831
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 833
    .local v8, extStoragePath:Ljava/io/File;
    if-eqz v8, :cond_4

    .line 836
    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .local v9, stat:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v5, v14

    .line 844
    .local v5, blockSize:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    int-to-long v10, v14

    .line 845
    .local v10, totalBlocks:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v1, v14

    .line 849
    .local v1, availableBlocks:J
    mul-long v12, v10, v5

    .line 850
    .local v12, totalSpace:J
    mul-long v3, v1, v5

    .line 852
    .local v3, availableSpace:J
    sget-boolean v14, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 853
    const-string v14, "GlobalScreenshot"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GlobalScreenshot availableSpace = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 856
    const-string v14, "GlobalScreenshot"

    const-string v15, "GlobalScreenshot [UBS Enabled Mode]"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const v14, 0x7f0c0043

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 858
    const/4 v14, 0x0

    .line 872
    .end local v1           #availableBlocks:J
    .end local v3           #availableSpace:J
    .end local v5           #blockSize:J
    .end local v9           #stat:Landroid/os/StatFs;
    .end local v10           #totalBlocks:J
    .end local v12           #totalSpace:J
    :goto_0
    return v14

    .line 837
    :catch_0
    move-exception v7

    .line 838
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v14, "ScreenCapture"

    const-string v15, "isAvailableCapacity"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const v14, 0x7f0c0043

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 840
    const/4 v14, 0x0

    goto :goto_0

    .line 859
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #availableBlocks:J
    .restart local v3       #availableSpace:J
    .restart local v5       #blockSize:J
    .restart local v9       #stat:Landroid/os/StatFs;
    .restart local v10       #totalBlocks:J
    .restart local v12       #totalSpace:J
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isRamBootMode()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 860
    const-string v14, "GlobalScreenshot"

    const-string v15, "GlobalScreenshot [RAM Boot Mode]"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const v14, 0x7f0c0043

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 862
    const/4 v14, 0x0

    goto :goto_0

    .line 863
    :cond_2
    const-wide/16 v14, 0x2800

    cmp-long v14, v3, v14

    if-gez v14, :cond_3

    .line 864
    const-string v14, "GlobalScreenshot"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GlobalScreenshot available Space = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const v14, 0x7f0c0142

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 866
    const/4 v14, 0x0

    goto :goto_0

    .line 868
    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    .line 871
    .end local v1           #availableBlocks:J
    .end local v3           #availableSpace:J
    .end local v5           #blockSize:J
    .end local v9           #stat:Landroid/os/StatFs;
    .end local v10           #totalBlocks:J
    .end local v12           #totalSpace:J
    :cond_4
    const v14, 0x7f0c0043

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 872
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private isRamBootMode()Z
    .locals 6

    .prologue
    .line 815
    const-string v1, "trigger_restart_min_framework"

    .line 816
    .local v1, ENCRYPTING_STATE:Ljava/lang/String;
    const-string v0, "1"

    .line 818
    .local v0, ENCRYPTED_STATE:Ljava/lang/String;
    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, cryptState:Ljava/lang/String;
    const/4 v3, 0x0

    .line 820
    .local v3, onlyCore:Z
    const-string v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 821
    const-string v4, "GlobalScreenshot"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v3, 0x1

    .line 827
    :cond_0
    :goto_0
    return v3

    .line 823
    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 824
    const-string v4, "GlobalScreenshot"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "nManager"
    .parameter "screenshot_failed_text_case"

    .prologue
    const v6, 0x7f0c0043

    .line 1242
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1243
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1244
    .local v2, r:Landroid/content/res/Resources;
    sget-boolean v4, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GlobalScreenshot"

    const-string v5, "GlobalScreenshot notifyScreenshotError is start!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_0
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f0200b1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1254
    .local v0, b:Landroid/app/Notification$Builder;
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1258
    .local v1, n:Landroid/app/Notification;
    const/16 v4, 0x315

    invoke-virtual {p1, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1259
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getGlobalSystemUiVisibility(Landroid/view/WindowManager;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getGlobalSystemUiVisibility(Landroid/view/WindowManager;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1261
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1262
    :cond_2
    return-void
.end method

.method private playCaptureSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1078
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1080
    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, country:Ljava/lang/String;
    const-string v3, "JP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1082
    const-string v3, "service.camera.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1083
    const-string v3, "GlobalScreenshot"

    const-string v4, "Camera is running!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v5}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(I)V

    .line 1098
    .end local v1           #country:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1091
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1093
    .local v2, extraRingerMode:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1094
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v5}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(I)V

    goto :goto_0

    .line 1095
    :cond_2
    if-ne v2, v6, :cond_0

    .line 1096
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    iget-wide v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "finisher"
    .parameter "screenBitmap"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, topActivityName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    .line 600
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    if-eqz v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 602
    if-eqz v1, :cond_1

    const-string v2, "com.samsung.pickuptutorial.PalmSwipeTutorial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 604
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 617
    :goto_0
    return-void

    .line 610
    :cond_1
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 611
    .local v0, data:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 612
    iput-object p2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 613
    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 614
    iput-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 615
    new-instance v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x315

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V

    new-array v3, v6, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 878
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 6
    .parameter "finisher"
    .parameter "w"
    .parameter "h"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    const/4 v5, 0x0

    .line 946
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 947
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 950
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 951
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 953
    :cond_0
    iput v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirection:I

    .line 954
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 956
    .local v0, screenshotDropInAnim:Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 958
    .local v1, screenshotFadeOutAnim:Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 959
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 960
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 968
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 983
    return-void
.end method

.method private startAnimationForPalmSweep(Ljava/lang/Runnable;I)V
    .locals 7
    .parameter "finisher"
    .parameter "direction"

    .prologue
    const/4 v1, -0x1

    .line 881
    sget-boolean v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 882
    const-string v2, "GlobalScreenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlobalScreenshot startAnimationForPalmSweep start!!! and direction is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    new-instance v2, Lcom/android/systemui/screenshot/CaptureEffectView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    .line 884
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 885
    .local v6, frame:Landroid/widget/FrameLayout;
    iput p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirection:I

    .line 887
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x500

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 896
    .local v0, mEffectViewParams:Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 897
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 899
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 900
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 904
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 906
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v2, p0, p1, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectView;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;)V

    .line 924
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 938
    return-void
.end method

.method private startAnimationForShutterClickEffect(Ljava/lang/Runnable;IIZZ)V
    .locals 10
    .parameter "finisher"
    .parameter "w"
    .parameter "h"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    .line 991
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v9

    .line 992
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 993
    const-string v1, "GlobalScreenshot"

    const-string v2, "GlobalScreenshot startAnimationForShutterClickEffect start!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    .line 997
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v8

    .line 999
    .local v8, orientation:I
    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v8}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    .line 1000
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1003
    .local v7, frame:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d6

    const/16 v4, 0x500

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1012
    .local v0, mEffectViewParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1013
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1015
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1019
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1020
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1021
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1029
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v2, p0, p1, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;)V

    .line 1062
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1074
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1075
    return-void

    .line 1021
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 1074
    .end local v0           #mEffectViewParams:Landroid/view/WindowManager$LayoutParams;
    .end local v7           #frame:Landroid/widget/FrameLayout;
    .end local v8           #orientation:I
    :catchall_1
    move-exception v1

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1025
    .restart local v0       #mEffectViewParams:Landroid/view/WindowManager$LayoutParams;
    .restart local v7       #frame:Landroid/widget/FrameLayout;
    .restart local v8       #orientation:I
    :catch_0
    move-exception v6

    .line 1026
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenshotLayout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method


# virtual methods
.method takeScreenshot(Ljava/lang/Runnable;I)V
    .locals 12
    .parameter "finisher"
    .parameter "direction"

    .prologue
    .line 638
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "GlobalScreenshot"

    const-string v1, "GlobalScreenshot palm sweep takeScreenshot start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    iput p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    .line 644
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mEndAnimation:I

    .line 645
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 646
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    aput v1, v8, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    aput v1, v8, v0

    .line 649
    .local v8, dims:[F
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v7

    .line 650
    .local v7, degrees:F
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_3

    const/4 v10, 0x1

    .line 651
    .local v10, requiresRotation:Z
    :goto_0
    if-eqz v10, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 655
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 656
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v8, v0

    .line 657
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v8, v0

    .line 661
    :cond_1
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 662
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_4

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 664
    .local v9, r:Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7f0c0044

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 665
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 719
    .end local v9           #r:Landroid/content/res/Resources;
    :goto_1
    return-void

    .line 650
    .end local v10           #requiresRotation:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 669
    .restart local v10       #requiresRotation:Z
    :cond_4
    if-eqz v10, :cond_5

    .line 671
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 673
    .local v11, ss:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 674
    .local v6, c:Landroid/graphics/Canvas;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 675
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 676
    const/4 v0, 0x0

    aget v0, v8, v0

    neg-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v8, v1

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 678
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 679
    iput-object v11, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 702
    .end local v6           #c:Landroid/graphics/Canvas;
    .end local v11           #ss:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 704
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 705
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForPalmSweep(Ljava/lang/Runnable;I)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 708
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Capturing screenshot succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 713
    :cond_6
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Capturing screenshot failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZI)V
    .locals 15
    .parameter "finisher"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"
    .parameter "sweepDirection"

    .prologue
    .line 727
    move/from16 v0, p4

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    .line 728
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 729
    const/4 v1, 0x2

    new-array v9, v1, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    aput v2, v9, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    aput v2, v9, v1

    .line 730
    .local v9, dims:[F
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v8

    .line 731
    .local v8, degrees:F
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_2

    const/4 v11, 0x1

    .line 732
    .local v11, requiresRotation:Z
    :goto_0
    if-eqz v11, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 735
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 736
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 737
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v9, v1

    .line 738
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v9, v1

    .line 742
    :cond_0
    const/4 v1, 0x0

    aget v1, v9, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 743
    .local v12, screenBitmap:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gtz v1, :cond_3

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 745
    .local v10, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const v3, 0x7f0c0045

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 748
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Capturing screenshot failed"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 812
    .end local v10           #r:Landroid/content/res/Resources;
    :goto_1
    return-void

    .line 731
    .end local v11           #requiresRotation:Z
    .end local v12           #screenBitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 755
    .restart local v11       #requiresRotation:Z
    .restart local v12       #screenBitmap:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v11, :cond_4

    .line 757
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 759
    .local v13, ss:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 760
    .local v7, c:Landroid/graphics/Canvas;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 761
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 762
    const/4 v1, 0x0

    aget v1, v9, v1

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v9, v2

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 763
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 764
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 765
    move-object v12, v13

    .line 786
    .end local v7           #c:Landroid/graphics/Canvas;
    .end local v13           #ss:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v2

    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 789
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 790
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    sget-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 794
    iget-object v14, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v14

    .line 795
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 796
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForShutterClickEffect(Ljava/lang/Runnable;IIZZ)V

    .line 799
    :cond_6
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 801
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Capturing screenshot succeeded"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 790
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 799
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 806
    :cond_7
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Capturing screenshot failed"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1
.end method
