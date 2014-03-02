.class public Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;
.super Landroid/view/View;
.source "AnimatedBrightnessIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;,
        Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$QuintEaseOut;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private animationEnableValue:I

.field private bmIcon:Landroid/graphics/Bitmap;

.field private brightnessValueMax:I

.field private brightnessValueMin:I

.field private cx:F

.field private cy:F

.field private defaultCircleRadius:F

.field private defaultCircleX:F

.field private defaultCircleY:F

.field private defaultImageHeight:I

.field private defaultImageWidth:I

.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mPaint:Landroid/graphics/Paint;

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;

.field private radius:F

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v1, 0x4a

    const/16 v3, 0x14

    const/high16 v2, 0x4180

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    .line 20
    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageHeight:I

    .line 23
    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    .line 24
    iput v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    .line 25
    iput v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    .line 27
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    .line 28
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    .line 29
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    .line 32
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 34
    iput v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 35
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 37
    iput v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    .line 44
    const/high16 v1, 0x4248

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    .line 45
    const-string v1, "AnimatedBrightnessIconView"

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->init()V

    .line 61
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 62
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 63
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 64
    return-void
.end method

.method private changeValue()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 116
    .local v0, value:F
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    .line 117
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    .line 118
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    .line 119
    return-void
.end method

.method private getValue()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    int-to-float v0, v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const v0, 0x7f02006f

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x3a1f17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    .line 76
    return-void
.end method

.method private setAnimation(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$QuintEaseOut;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$QuintEaseOut;-><init>(Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->invalidate()V

    .line 94
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    return-void
.end method

.method public setAnimationEnableValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimationEnableValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    .line 155
    return-void
.end method

.method public setBrightnessValueMax(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessValueMax : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 150
    return-void
.end method

.method public setBrightnessValueMin(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessValueMin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 145
    return-void
.end method

.method public setIcon(IIIIII)V
    .locals 2
    .parameter "resId"
    .parameter "imgWidth"
    .parameter "imgHeight"
    .parameter "circleRadius"
    .parameter "circleX"
    .parameter "circleY"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    const-string v1, "setIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput p2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    .line 134
    iput p3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageHeight:I

    .line 135
    int-to-float v0, p4

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    .line 136
    int-to-float v0, p5

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    .line 137
    int-to-float v0, p6

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    .line 140
    return-void
.end method

.method public setIcon(IZ)V
    .locals 2
    .parameter "resId"
    .parameter "needChange"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    const-string v1, "setIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    .line 126
    if-eqz p2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->changeValue()V

    .line 129
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0x64

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 163
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 165
    if-le p1, v3, :cond_2

    .line 166
    const/16 p1, 0x64

    .line 172
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    if-le v0, v1, :cond_4

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAnimation(I)V

    .line 179
    :goto_1
    return-void

    .line 167
    :cond_2
    const/16 v0, 0x60

    if-lt p1, v0, :cond_3

    if-ge p1, v3, :cond_3

    .line 168
    const/16 p1, 0x60

    goto :goto_0

    .line 169
    :cond_3
    if-gez p1, :cond_1

    .line 170
    const/4 p1, 0x0

    goto :goto_0

    .line 177
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->invalidate()V

    goto :goto_1
.end method
