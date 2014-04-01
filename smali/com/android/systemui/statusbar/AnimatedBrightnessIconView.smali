.class public Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;
.super Landroid/view/View;
.source "AnimatedBrightnessIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v2, 0x14

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 39
    iput v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 40
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 42
    iput v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    .line 49
    const/high16 v1, 0x4248

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    .line 50
    const-string v1, "AnimatedBrightnessIconView"

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->init()V

    .line 66
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 68
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 69
    return-void
.end method

.method private changeValue()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 134
    .local v0, value:F
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    .line 135
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    .line 136
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    .line 137
    return-void
.end method

.method private getValue()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    int-to-float v0, v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    .line 75
    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageHeight:I

    .line 78
    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    .line 79
    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    .line 80
    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    .line 82
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    .line 83
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    .line 84
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const v1, 0x7f020080

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    .line 89
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f080018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    .line 95
    return-void
.end method

.method private setAnimation(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 102
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

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;-><init>(Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 112
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    .line 116
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
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

    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    return-void
.end method

.method public setAnimationEnableValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 171
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

    .line 172
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    .line 173
    return-void
.end method

.method public setBrightnessValueMax(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 166
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

    .line 167
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 168
    return-void
.end method

.method public setBrightnessValueMin(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 161
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

    .line 162
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 163
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
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    const-string v1, "setIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput p2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    .line 152
    iput p3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageHeight:I

    .line 153
    int-to-float v0, p4

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    .line 154
    int-to-float v0, p5

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    .line 155
    int-to-float v0, p6

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    .line 158
    return-void
.end method

.method public setIcon(IZ)V
    .locals 2
    .parameter "resId"
    .parameter "needChange"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    const-string v1, "setIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    .line 144
    if-eqz p2, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->changeValue()V

    .line 147
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0x64

    .line 176
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

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 181
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

    .line 183
    if-le p1, v3, :cond_2

    .line 184
    const/16 p1, 0x64

    .line 190
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    if-le v0, v1, :cond_4

    .line 191
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAnimation(I)V

    .line 197
    :goto_1
    return-void

    .line 185
    :cond_2
    const/16 v0, 0x60

    if-lt p1, v0, :cond_3

    if-ge p1, v3, :cond_3

    .line 186
    const/16 p1, 0x60

    goto :goto_0

    .line 187
    :cond_3
    if-gez p1, :cond_1

    .line 188
    const/4 p1, 0x0

    goto :goto_0

    .line 195
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method
