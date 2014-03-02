.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.KeyButtonView"

.field private static mGetSumSizeMethod:Ljava/lang/reflect/Method;

.field private static mIsExistPalmMethod:Z


# instance fields
.field final BUTTON_QUIESCENT_ALPHA:F

.field final GLOW_MAX_SCALE_FACTOR:F

.field mCheckLongPress:Ljava/lang/Runnable;

.field mCode:I

.field mDownTime:J

.field mDrawingAlpha:F

.field mGlowAlpha:F

.field mGlowBG:Landroid/graphics/drawable/Drawable;

.field mGlowHeight:I

.field mGlowScale:F

.field mGlowWidth:I

.field private mIsPalm:Z

.field mPerformLongClick:Z

.field mPressedAnim:Landroid/animation/AnimatorSet;

.field mRect:Landroid/graphics/RectF;

.field mSupportsLongpress:Z

.field mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    :try_start_0
    const-string v2, "android.view.MotionEvent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, classMotionEvent:Ljava/lang/Class;
    const-string v2, "getSumSize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGetSumSizeMethod:Ljava/lang/reflect/Method;

    .line 86
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsExistPalmMethod:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v2, "StatusBar.KeyButtonView"

    const-string v3, "ClassNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sput-boolean v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsExistPalmMethod:Z

    goto :goto_0

    .line 90
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    const-string v2, "StatusBar.KeyButtonView"

    const-string v3, "NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput-boolean v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsExistPalmMethod:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v6, 0x3f80

    const v5, 0x3f333333

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const v1, 0x3fa66666

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->GLOW_MAX_SCALE_FACTOR:F

    .line 62
    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->BUTTON_QUIESCENT_ALPHA:F

    .line 69
    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    iput v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    iput v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 70
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 71
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    .line 97
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 123
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 128
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 130
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    .line 145
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    .line 146
    return-void
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v1

    .line 153
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v0

    .line 158
    .local v0, h:I
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    int-to-float v4, v1

    mul-float/2addr v4, v6

    int-to-float v5, v0

    mul-float/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 167
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/16 v12, 0x20

    const/high16 v11, 0x4100

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 261
    .local v0, action:I
    const/4 v3, 0x0

    .line 262
    .local v3, sumSize:F
    sget-boolean v9, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsExistPalmMethod:Z

    if-eqz v9, :cond_0

    .line 264
    :try_start_0
    sget-object v9, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGetSumSizeMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v9, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 265
    .local v4, sumSizeF:Ljava/lang/Float;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 274
    .end local v4           #sumSizeF:Ljava/lang/Float;
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 381
    :cond_1
    :goto_1
    return v8

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, ex:Ljava/lang/IllegalAccessException;
    const-string v9, "StatusBar.KeyButtonView"

    const-string v10, "IllegalAccessException"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    .end local v2           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 269
    .local v2, ex:Ljava/lang/reflect/InvocationTargetException;
    const-string v9, "StatusBar.KeyButtonView"

    const-string v10, "InvocationTargetException"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v2           #ex:Ljava/lang/reflect/InvocationTargetException;
    :pswitch_0
    cmpl-float v9, v3, v11

    if-lez v9, :cond_2

    .line 278
    const-string v7, "StatusBar.KeyButtonView"

    const-string v9, "D.PALM"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    goto :goto_1

    .line 283
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 288
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 290
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPerformLongClick:Z

    .line 291
    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v9, :cond_3

    .line 292
    iget-wide v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v7, v7, v9, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 297
    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v7, :cond_1

    .line 298
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_2

    .line 303
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 304
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 306
    .local v6, y:I
    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v9, v9

    if-lt v5, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v9, v10

    if-ge v5, v9, :cond_4

    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v9, v9

    if-lt v6, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v9, v10

    if-ge v6, v9, :cond_4

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    if-nez v9, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 312
    cmpl-float v7, v3, v11

    if-lez v7, :cond_5

    .line 313
    const-string v7, "StatusBar.KeyButtonView"

    const-string v9, "M.PALM"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    .line 317
    :cond_5
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    if-eqz v7, :cond_1

    .line 318
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v7, :cond_1

    .line 319
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 326
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 328
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPerformLongClick:Z

    if-eqz v7, :cond_6

    .line 329
    const-string v7, "StatusBar.KeyButtonView"

    const-string v9, "ACTION_CANCEL return"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 333
    :cond_6
    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v7, :cond_7

    .line 334
    invoke-virtual {p0, v8, v12}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 336
    :cond_7
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v7, :cond_1

    .line 337
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 342
    :pswitch_3
    cmpl-float v9, v3, v11

    if-lez v9, :cond_8

    .line 343
    const-string v9, "StatusBar.KeyButtonView"

    const-string v10, "U.PALM"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    .line 347
    :cond_8
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    if-eqz v9, :cond_9

    .line 348
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto/16 :goto_1

    .line 353
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    .line 354
    .local v1, doIt:Z
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 356
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPerformLongClick:Z

    if-eqz v9, :cond_a

    .line 357
    const-string v7, "StatusBar.KeyButtonView"

    const-string v9, "ACTION_UP return"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 361
    :cond_a
    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v9, :cond_d

    .line 362
    if-eqz v1, :cond_c

    .line 363
    invoke-virtual {p0, v8, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 364
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 365
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 375
    :cond_b
    :goto_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v7, :cond_1

    .line 376
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 367
    :cond_c
    invoke-virtual {p0, v8, v12}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_3

    .line 371
    :cond_d
    if-eqz v1, :cond_b

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performClick()Z

    goto :goto_3

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEvent(II)V
    .locals 2
    .parameter "action"
    .parameter "flags"

    .prologue
    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 386
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 389
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 390
    .local v7, repeatCount:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v3, p2, 0x8

    or-int/lit8 v11, v3, 0x40

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 394
    .local v0, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 396
    return-void

    .line 389
    .end local v0           #ev:Landroid/view/KeyEvent;
    .end local v7           #repeatCount:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(I)V

    .line 181
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 9
    .parameter "x"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const v5, 0x3e999998

    .line 201
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 222
    :goto_0
    return-void

    .line 202
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 204
    .local v3, w:F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 209
    .local v0, h:F
    mul-float v4, v3, v5

    div-float/2addr v4, v7

    add-float v1, v4, v6

    .line 210
    .local v1, rx:F
    mul-float v4, v0, v5

    div-float/2addr v4, v7

    add-float v2, v4, v6

    .line 211
    .local v2, ry:F
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v4}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 9
    .parameter "pressed"

    .prologue
    const v4, 0x3fa66666

    const/high16 v8, 0x3f80

    const v7, 0x3f333333

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 230
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    .line 231
    .local v0, as:Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_4

    .line 232
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 233
    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    .line 234
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_2

    .line 235
    iput v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    .line 236
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    .line 237
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    aput v8, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 250
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 253
    .end local v0           #as:Landroid/animation/AnimatorSet;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 254
    return-void

    .line 243
    .restart local v0       #as:Landroid/animation/AnimatorSet;
    :cond_4
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v8, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "drawingAlpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 248
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method
