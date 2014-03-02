.class public Lcom/android/systemui/statusbar/policy/BatteryBarControl;
.super Landroid/widget/LinearLayout;
.source "BatteryBarControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBarControl$TSMObserver;
    }
.end annotation


# static fields
.field protected static final CURRENT_LOC:I = 0x1

.field private static LAST_BATTERY_LEVEL:I = 0x0

.field public static final STYLE_NONE:I = 0x0

.field public static final STYLE_REGULAR:I = 0x1

.field public static final STYLE_SYMMETRIC:I = 0x2


# instance fields
.field alternateStyleBar:Lcom/android/systemui/statusbar/policy/BatteryBarView;

.field isAttached:Z

.field isVertical:Z

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field private mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLocation:I

.field mLocationToLookFor:I

.field private mScoverMargin:I

.field mStyle:I

.field mainBar:Lcom/android/systemui/statusbar/policy/BatteryBarView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->LAST_BATTERY_LEVEL:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mLocationToLookFor:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    .line 47
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mLocation:I

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mLocationToLookFor:I

    .line 52
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryCharging:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isAttached:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isVertical:Z

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarControl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarControl$TSMObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl$TSMObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarControl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    .line 65
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mLocationToLookFor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mScoverMargin:I

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/BatteryBarControl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/BatteryBarControl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryCharging:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/BatteryBarControl;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$3(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    sput p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->LAST_BATTERY_LEVEL:I

    return-void
.end method


# virtual methods
.method public addBar()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/high16 v8, 0x4334

    .line 138
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    const/high16 v4, 0x3f80

    .line 138
    invoke-direct {v3, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 141
    .local v3, ll:Landroid/widget/LinearLayout$LayoutParams;
    sget v4, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->LAST_BATTERY_LEVEL:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I

    .line 142
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 144
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryCharging:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isVertical:Z

    .line 143
    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryBarView;-><init>(Landroid/content/Context;ZIZ)V

    .line 146
    .local v0, bar:Lcom/android/systemui/statusbar/policy/BatteryBarView;
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .end local v0           #bar:Lcom/android/systemui/statusbar/policy/BatteryBarView;
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 148
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 149
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryCharging:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isVertical:Z

    .line 148
    invoke-direct {v1, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryBarView;-><init>(Landroid/content/Context;ZIZ)V

    .line 150
    .local v1, bar1:Lcom/android/systemui/statusbar/policy/BatteryBarView;
    new-instance v2, Lcom/android/systemui/statusbar/policy/BatteryBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 151
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryCharging:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryLevel:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isVertical:Z

    .line 150
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryBarView;-><init>(Landroid/content/Context;ZIZ)V

    .line 153
    .local v2, bar2:Lcom/android/systemui/statusbar/policy/BatteryBarView;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isVertical:Z

    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->setRotation(F)V

    .line 155
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/policy/BatteryBarView;->setRotation(F)V

    .line 159
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getSettingsHeight()I
    .locals 6

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 168
    .line 169
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const/4 v2, 0x1

    int-to-float v0, v2

    .line 170
    .local v0, dp:F
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method protected isLocationValid(I)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 198
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mLocationToLookFor:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 71
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isAttached:Z

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isVertical:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isAttached:Z

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miuibattery_indicator_style"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->updateBarLayout(Z)V

    .line 83
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isAttached:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarControl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarControl;)V

    .line 120
    const-wide/16 v2, 0x1f4

    .line 115
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_0
    return-void
.end method

.method public removeBars()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->removeAllViews()V

    .line 175
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .parameter "pixels"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 129
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isVertical:Z

    if-eqz v1, :cond_0

    .line 130
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void

    .line 132
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public updateBarLayout(Z)V
    .locals 4
    .parameter "coverOpen"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 159
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setPadding(IIII)V

    .line 174
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->removeBars()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addBar()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setVisibility(I)V

    :cond_0
    return-void

    .line 169
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mScoverMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mScoverMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setPadding(IIII)V

    goto :goto_0
.end method

.method public updateOrientationLayout()V
    .locals 4

    .prologue
    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->removeBars()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addBar()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    .line 179
    .local v0, oldStyle:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miuibattery_indicator_style"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 181
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    .line 183
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mLocation:I

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->getSettingsHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setHeight(I)V

    .line 185
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    if-ne v0, v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mStyle:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->mLocation:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->isLocationValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->removeBars()V

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->addBar()V

    .line 190
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->removeBars()V

    .line 193
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarControl;->setVisibility(I)V

    goto :goto_0
.end method
