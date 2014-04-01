.class public Lcom/android/systemui/statusbar/PickUpTutorial;
.super Landroid/app/Activity;
.source "PickUpTutorial.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final HELP_PLUG_PKG:Ljava/lang/String; = "com.samsung.helpplugin"

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_OFF_STATE:I = 0x5

.field private static final LCD_ON:I = 0x3

.field private static final LCD_ON_STATE:I = 0x6

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpTutorial"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ivt:[B

.field mAnimation:Landroid/view/animation/Animation;

.field private mBack:Z

.field private mCount:I

.field private mDownDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLCDisOn:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPaused:Z

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickUpDialog:Landroid/app/AlertDialog;

.field private mPickUpTutorial:Landroid/widget/FrameLayout;

.field private mReadyToShowPutDownDialog:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 72
    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mDownDialog:Landroid/app/AlertDialog;

    .line 73
    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpDialog:Landroid/app/AlertDialog;

    .line 80
    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    .line 88
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->ivt:[B

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$1;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$2;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void

    .line 88
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x64t
        0xfft
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xb1t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/PickUpTutorial;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->ivt:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/PickUpTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->tryPickUpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return p1
.end method

.method private canNavigationBarMove()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "ResourceName"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    const/4 v4, -0x1

    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, mResources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 480
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 481
    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 490
    :goto_0
    if-eqz v2, :cond_2

    .line 491
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 492
    .local v1, id:I
    if-eqz v1, :cond_1

    .line 493
    const-string v4, "STATUSBAR-PickUpTutorial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ResourceName id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v1           #id:I
    :goto_1
    return v1

    .line 483
    :cond_0
    :try_start_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "PackageManager is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 484
    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 496
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #id:I
    :cond_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "not find resource!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 497
    goto :goto_1

    .line 500
    .end local v1           #id:I
    :cond_2
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "Resource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 501
    goto :goto_1
.end method

.method private putDownDialog()V
    .locals 4

    .prologue
    .line 314
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 315
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "putDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 360
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/PickUpTutorial$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$3;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 369
    return-void
.end method

.method public static setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "viewer"
    .parameter "imageName"

    .prologue
    .line 506
    move-object v2, p1

    .line 507
    .local v2, mImageViewer:Landroid/view/View;
    move-object v1, p0

    .line 508
    .local v1, mContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 509
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 510
    const-string v6, "drawable"

    const-string v7, "com.samsung.helpplugin"

    invoke-static {v1, p2, v6, v7}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 512
    .local v5, resId:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 514
    :try_start_0
    const-string v6, "com.samsung.helpplugin"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 516
    .local v3, mResources:Landroid/content/res/Resources;
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v3           #mResources:Landroid/content/res/Resources;
    .end local v5           #resId:I
    :cond_0
    :goto_0
    return-void

    .line 517
    .restart local v5       #resId:I
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 521
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v6, "STATUSBAR-PickUpTutorial"

    const-string v7, "The resource not downloaded yet"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryPickUpDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 373
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhonePutDown GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 429
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhoneDetect VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 431
    return-void
.end method


# virtual methods
.method public isDownloadable()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    sparse-switch p2, :sswitch_data_0

    .line 238
    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 224
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    goto :goto_0

    .line 234
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 309
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 461
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 98
    iput-object p0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    .line 99
    sput-object p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 106
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    .line 123
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "PickUp Tutorial"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 137
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    .line 139
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    .line 140
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->putDownDialog()V

    .line 144
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 302
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 277
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 279
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 287
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 265
    iput v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    .line 266
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 267
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 294
    return-void
.end method

.method public setMotionSensor(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 244
    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMotionSensor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 249
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 250
    if-eqz p1, :cond_1

    .line 251
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    goto :goto_0
.end method
