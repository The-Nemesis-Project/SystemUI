.class public Lcom/android/systemui/statusbar/policy/BatteryBarView;
.super Landroid/widget/RelativeLayout;
.source "BatteryBarView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBarView$TSMObserver;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x3e8

.field public static final STYLE_NONE:I = 0x0

.field public static final STYLE_REGULAR:I = 0x1

.field public static final STYLE_SYMMETRIC:I = 0x2


# instance fields
.field private isAnimating:Z

.field private mAttached:Z

.field mBatteryBar:Landroid/view/View;

.field mBatteryBarBackground:Landroid/widget/LinearLayout;

.field mBatteryBarLayout:Landroid/widget/LinearLayout;

.field private mBatteryCharging:Z

.field private mBatteryColorChangeObserver:Landroid/database/ContentObserver;

.field private mBatteryLevel:I

.field mCharger:Landroid/view/View;

.field mChargerLayout:Landroid/widget/LinearLayout;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private shouldAnimateCharging:Z

.field vertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mAttached:Z

    .line 49
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryCharging:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->shouldAnimateCharging:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->isAnimating:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->vertical:Z

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarView$TSMObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView$TSMObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryColorChangeObserver:Landroid/database/ContentObserver;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2
    .parameter "context"
    .parameter "isCharging"
    .parameter "currentCharge"

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    .line 72
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryCharging:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 2
    .parameter "context"
    .parameter "isCharging"
    .parameter "currentCharge"
    .parameter "isVertical"

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    .line 79
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryCharging:Z

    .line 80
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->vertical:Z

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/BatteryBarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/BatteryBarView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryCharging:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/BatteryBarView;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/policy/BatteryBarView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/policy/BatteryBarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->setProgress(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/policy/BatteryBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->updateBatteryColor()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/systemui/statusbar/policy/BatteryBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->updateSettings()V

    return-void
.end method

.method private fadeBarColor(ILandroid/view/View;)V
    .locals 8
    .parameter "newColor"
    .parameter "view"

    .prologue
    .line 218
    const/4 v3, 0x0

    .line 220
    .local v3, oldColor:I
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 227
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 228
    .local v0, anim:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/policy/BatteryBarView$2;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/policy/BatteryBarView$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarView;Landroid/view/View;)V

    .line 234
    .local v2, listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    .end local v0           #anim:Landroid/animation/ValueAnimator;
    .end local v2           #listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 8
    .parameter "n"

    .prologue
    const-wide/high16 v4, 0x4059

    const-wide/high16 v6, 0x3fe0

    .line 177
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->vertical:Z

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    .line 179
    .local v1, w:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :goto_0
    return-void

    .line 183
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #w:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    .line 184
    .restart local v1       #w:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateBatteryColor()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, -0x333334

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "battery_text_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "battery_color"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 200
    .local v1, color:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBar:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->fadeBarColor(ILandroid/view/View;)V

    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mCharger:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 196
    .end local v1           #color:I
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryCharging:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    const-string v1, "battery_color_auto_low"

    const v2, -0x15e7e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "battery_color_auto_charging"

    const v2, -0x6c2b00

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 198
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_3

    const-string v1, "battery_color_auto_medium"

    const v2, -0x1313f0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 199
    :cond_3
    const-string v1, "battery_color_auto_regular"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    .line 159
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->setProgress(I)V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->updateBatteryColor()V

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->updateBatteryBackground()V

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->shouldAnimateCharging:Z

    .line 166
    .local v0, oldShouldAnimateCharging:Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "batterybar_animation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 167
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->shouldAnimateCharging:Z

    .line 168
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->shouldAnimateCharging:Z

    if-ne v0, v2, :cond_0

    .line 174
    :goto_1
    return-void

    .line 169
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryCharging:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->shouldAnimateCharging:Z

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->start()V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->stop()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->isAnimating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 88
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 89
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mAttached:Z

    if-nez v4, :cond_0

    .line 90
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mAttached:Z

    .line 92
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarBackground:Landroid/widget/LinearLayout;

    .line 93
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarBackground:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    .line 97
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBar:Landroid/view/View;

    .line 101
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBar:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 105
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v0, 0x4080

    .line 106
    .local v0, dp:F
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 108
    .local v3, pixels:I
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    .line 110
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->vertical:Z

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    invoke-direct {v5, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :goto_0
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mCharger:Landroid/view/View;

    .line 118
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mCharger:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_text_color"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryColorChangeObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v5, "battcolorchange"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v5, "batterybar_animation"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->updateSettings()V

    .line 130
    .end local v0           #dp:F
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #pixels:I
    :cond_0
    return-void

    .line 114
    .restart local v0       #dp:F
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    .restart local v3       #pixels:I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    invoke-direct {v5, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public start()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 247
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->shouldAnimateCharging:Z

    if-nez v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->vertical:Z

    if-eqz v1, :cond_1

    .line 250
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 251
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 250
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 252
    .local v0, a:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 253
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 254
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->isAnimating:Z

    goto :goto_0

    .line 258
    .end local v0           #a:Landroid/view/animation/TranslateAnimation;
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->getTop()I

    move-result v4

    int-to-float v4, v4

    .line 258
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 260
    .restart local v0       #a:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 261
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 262
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->isAnimating:Z

    .line 273
    return-void
.end method

.method public updateBatteryBackground()V
    .locals 2

    .prologue
    .line 240
    const-string v1, "could possibly add background color option"

    const-string v1, "and can do so here I suppose"

    const/4 v0, 0x0

    .line 242
    .local v0, color:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView;->mBatteryBarBackground:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->fadeBarColor(ILandroid/view/View;)V

    .line 243
    return-void
.end method
