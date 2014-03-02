.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;
    }
.end annotation


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final TAG:Ljava/lang/String; = "DateView"

#the value of this static final field might be set in the static constructor
.field private static final TEXT_SIZE_DEFAULT:F = 0.0f

.field private static final TEXT_SIZE_LIMIT:I = 0x7d


# instance fields
.field private mAttachedToWindow:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z

.field private mWindowVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const/high16 v0, 0x4140

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/DateView;->TEXT_SIZE_DEFAULT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/DateView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 140
    move-object v1, p0

    .line 142
    .local v1, v:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x0

    .line 149
    :goto_1
    return v2

    .line 145
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 146
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 147
    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isWVGA()Z
    .locals 8

    .prologue
    .line 226
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 228
    .local v0, disp:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 229
    .local v1, dispMetrix:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 231
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 232
    .local v3, rawWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 233
    .local v2, rawHeight:I
    if-le v3, v2, :cond_0

    move v4, v2

    .line 234
    .local v4, smallestWidth:I
    :goto_0
    mul-int/lit16 v6, v4, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v5, v6, v7

    .line 237
    .local v5, smallestWidthDensityPixel:I
    const/16 v6, 0x154

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    return v6

    .end local v4           #smallestWidth:I
    .end local v5           #smallestWidthDensityPixel:I
    :cond_0
    move v4, v3

    .line 233
    goto :goto_0

    .line 237
    .restart local v4       #smallestWidth:I
    .restart local v5       #smallestWidthDensityPixel:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private refreshTextSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    sget v0, Lcom/android/systemui/statusbar/policy/DateView;->TEXT_SIZE_DEFAULT:F

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setTextSize(IF)V

    .line 215
    :goto_0
    const/high16 v0, 0x42fa

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setTextSize(IF)V

    .line 217
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " this.getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paint.measureText(this.getText()) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " textsize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method private setUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 156
    .local v1, update:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    if-eq v1, v2, :cond_0

    .line 157
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    .line 158
    if-eqz v1, :cond_2

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 171
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .line 155
    .end local v1           #update:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    .restart local v1       #update:Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 84
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    const-string v1, ""

    .line 87
    .local v1, dateformat:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, dateFormatSetting:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 98
    return-void

    .line 92
    :cond_2
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, dateFormatSetting:Ljava/lang/String;
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    .line 209
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 210
    return-void

    .line 205
    :cond_2
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 107
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 120
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 114
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateClock()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 137
    return-void
.end method
