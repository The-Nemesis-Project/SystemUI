.class public Lcom/android/systemui/PickUpTutorial;
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
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mBack:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 73
    iput-object v2, p0, Lcom/android/systemui/PickUpTutorial;->mDownDialog:Landroid/app/AlertDialog;

    .line 74
    iput-object v2, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpDialog:Landroid/app/AlertDialog;

    .line 81
    iput v1, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    .line 89
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->ivt:[B

    .line 149
    new-instance v0, Lcom/android/systemui/PickUpTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/PickUpTutorial$1;-><init>(Lcom/android/systemui/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/android/systemui/PickUpTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/PickUpTutorial$2;-><init>(Lcom/android/systemui/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void

    .line 89
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

.method static synthetic access$000(Lcom/android/systemui/PickUpTutorial;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->ivt:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/PickUpTutorial;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/PickUpTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/PickUpTutorial;->tryPickUpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/PickUpTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/PickUpTutorial;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/PickUpTutorial;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mBack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/PickUpTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/systemui/PickUpTutorial;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/PickUpTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/PickUpTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return p1
.end method

.method private canNavigationBarMove()Z
    .locals 1

    .prologue
    .line 452
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

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, mResources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 484
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 485
    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 494
    :goto_0
    if-eqz v2, :cond_2

    .line 495
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 496
    .local v1, id:I
    if-eqz v1, :cond_1

    .line 497
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

    .line 505
    .end local v1           #id:I
    :goto_1
    return v1

    .line 487
    :cond_0
    :try_start_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "PackageManager is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 488
    goto :goto_1

    .line 490
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 500
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #id:I
    :cond_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "not find resource!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 501
    goto :goto_1

    .line 504
    .end local v1           #id:I
    :cond_2
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "Resource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 505
    goto :goto_1
.end method

.method private putDownDialog()V
    .locals 4

    .prologue
    .line 316
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 317
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "putDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 363
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/PickUpTutorial$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/PickUpTutorial$3;-><init>(Lcom/android/systemui/PickUpTutorial;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 372
    return-void
.end method

.method public static setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "viewer"
    .parameter "imageName"

    .prologue
    .line 510
    move-object v2, p1

    .line 511
    .local v2, mImageViewer:Landroid/view/View;
    move-object v1, p0

    .line 512
    .local v1, mContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 513
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 514
    const-string v6, "drawable"

    const-string v7, "com.samsung.helpplugin"

    invoke-static {v1, p2, v6, v7}, Lcom/android/systemui/PickUpTutorial;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 516
    .local v5, resId:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 518
    :try_start_0
    const-string v6, "com.samsung.helpplugin"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 520
    .local v3, mResources:Landroid/content/res/Resources;
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v3           #mResources:Landroid/content/res/Resources;
    .end local v5           #resId:I
    :cond_0
    :goto_0
    return-void

    .line 521
    .restart local v5       #resId:I
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 525
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

    .line 376
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iput-boolean v2, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 425
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 427
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhonePutDown GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhoneDetect VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 435
    return-void
.end method


# virtual methods
.method public isDownloadable()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 224
    sparse-switch p2, :sswitch_data_0

    .line 240
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

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->finish()V

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    goto :goto_0

    .line 236
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->finish()V

    goto :goto_0

    .line 224
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
    .line 308
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mBack:Z

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->finish()V

    .line 311
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 459
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 465
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 99
    iput-object p0, p0, Lcom/android/systemui/PickUpTutorial;->activity:Landroid/app/Activity;

    .line 100
    sput-object p0, Lcom/android/systemui/PickUpTutorial;->mContext:Landroid/content/Context;

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->setContentView(I)V

    .line 107
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    .line 124
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->pm:Landroid/os/PowerManager;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "PickUp Tutorial"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 139
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mContext:Landroid/content/Context;

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    .line 141
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    .line 142
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/PickUpTutorial;->putDownDialog()V

    .line 146
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 304
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 279
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    .line 281
    invoke-virtual {p0, v4}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 284
    iput-boolean v4, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 289
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 264
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 267
    iput v2, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    .line 268
    iput-boolean v2, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    .line 269
    iput-boolean v3, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 296
    return-void
.end method

.method public setMotionSensor(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 246
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

    .line 248
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 251
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 252
    if-eqz p1, :cond_1

    .line 253
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    goto :goto_0
.end method
