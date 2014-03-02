.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# static fields
.field private static final COVER_TYPE_FLIP_WALLET:I = 0x0

.field private static final COVER_TYPE_NONE:I = 0x2

.field private static final COVER_TYPE_SVIEW:I = 0x1

.field private static final COVER_TYPE_SVIEW_CHARGER:I = 0x3

.field private static final DEBUG:Z = false

.field private static final EXPAND_NOTI_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED_NOTI"

.field private static final EXPAND_SETTING_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED_SETTING"

.field private static final SCREEN_ON_TIME:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarView"

.field private static mHorizontalShift:I

.field private static mVerticalShift:I


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field mBatteryBar:Landroid/widget/LinearLayout;

.field mBlackBGView:Landroid/view/View;

.field private mClearCoverMargin:I

.field private mDirection:I

.field mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mFullWidthNotifications:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMiniMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSViewCoverOpen:Z

.field private mIsSuppressed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mMaxShift:I

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mScoverMargin:I

.field mScrimColor:I

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mSettingsPanelDragzoneFrac:F

.field mSettingsPanelDragzoneMin:F

.field private mShouldFade:Z

.field mStatusBarContents:Landroid/view/ViewGroup;

.field mTicker:Landroid/view/ViewGroup;

.field private mTickerPaddingBottom:I

.field private mTickerPaddingLeft:I

.field private mTickerPaddingRight:I

.field private mTickerPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    .line 96
    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 66
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 71
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSViewCoverOpen:Z

    .line 88
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScoverMargin:I

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    .line 94
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSuppressed:Ljava/util/ArrayList;

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsMiniMode:Ljava/util/ArrayList;

    .line 146
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 256
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0003

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    .line 257
    const v4, 0x7f0e003c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 259
    const v4, 0x7f0e003b

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    .line 264
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    goto :goto_0

    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    move v2, v3

    .line 263
    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSViewCoverOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSViewCoverBackground()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScoverMargin:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSuppressed:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsMiniMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method private updateSViewCoverBackground()V
    .locals 3

    .prologue
    .line 243
    const-string v0, "PhoneStatusBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSViewCoverBackground mIsSuppressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSuppressed:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsMiniMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsMiniMode:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSuppressed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsMiniMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlackBGView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlackBGView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2
    .parameter "pv"

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f09006e

    if-ne v0, v1, :cond_1

    .line 285
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 289
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    .line 290
    return-void

    .line 286
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f09002c

    if-ne v0, v1, :cond_0

    .line 287
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 289
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 465
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 474
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 467
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 468
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pokeWakelock(I)V

    .line 470
    const-string v2, "PhoneStatusBarView"

    const-string v3, "30S_SCREEN_ON_FOR_ACCESSIBILITY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public hasFullWidthNotifications()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    return v0
.end method

.method public marqueeStatusBar()V
    .locals 8

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-void

    .line 104
    :cond_0
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    add-int/2addr v2, v3

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    .line 105
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    if-gt v2, v3, :cond_1

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    neg-int v3, v3

    if-ge v2, v3, :cond_2

    .line 106
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    neg-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    .line 108
    :cond_2
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x4

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    .line 109
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v1, v2, 0x2

    .line 110
    .local v1, top_shift:I
    neg-int v0, v1

    .line 111
    .local v0, bottom_shift:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    sget v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    sget v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 118
    const-string v2, "PhoneStatusBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "marqueeStatusBar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mClearCover:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    goto :goto_0
.end method

.method public onAllPanelsCollapsed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisibleSoon()V

    .line 367
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 368
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 369
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 277
    .local v1, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 279
    .end local v1           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    .line 125
    const v1, 0x7f09005d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    .line 131
    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlackBGView:Landroid/view/View;

    .line 133
    const v1, 0x7f09013d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBatteryBar:Landroid/widget/LinearLayout;

    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.samsung.cover.COLOR_PICKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 3
    .parameter "openPanel"

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 375
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->IsFlipSettingShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 380
    const-string v0, "PhoneStatusBarView"

    const-string v1, "onPanelFullyOpened in EXPAND_SETTING_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 388
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    .line 390
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_NOTI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 383
    const-string v0, "PhoneStatusBarView"

    const-string v1, "onPanelFullyOpened in EXPAND_NOTI_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPanelPeeked()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 348
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 304
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 306
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 307
    const/4 v1, 0x1

    .line 309
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v1

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 401
    .local v0, barConsumedEvent:Z
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 18
    .parameter "panel"
    .parameter "frac"

    .prologue
    .line 416
    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 422
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    if-eqz v6, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    move/from16 p2, v0

    .line 426
    const v6, 0x3f99999a

    mul-float v6, v6, p2

    const v7, 0x3e4ccccd

    sub-float p2, v6, v7

    .line 427
    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    .line 441
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    .line 442
    .local v1, H:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 443
    .local v5, ph:F
    const/high16 v2, 0x3f80

    .line 459
    .local v2, alpha:F
    return-void

    .line 431
    .end local v1           #H:I
    .end local v2           #alpha:F
    .end local v5           #ph:F
    :cond_1
    const-wide/high16 v6, 0x3ff0

    const-wide/high16 v8, 0x3fe0

    const-wide/high16 v10, 0x3ff0

    const-wide v12, 0x400921fa00000000L

    const/high16 v14, 0x3f80

    sub-float v14, v14, p2

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 433
    .local v4, k:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    const v8, 0xffffff

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .line 434
    .local v3, color:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public panelsEnabled()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsSViewCoverOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 8
    .parameter "touch"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 315
    .local v4, x:F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isLayoutRtl()Z

    move-result v0

    .line 317
    .local v0, isLayoutRtl:Z
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-eqz v7, :cond_2

    .line 319
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v7

    add-float/2addr v5, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const/4 v5, 0x0

    .line 341
    :goto_1
    return-object v5

    .line 319
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getMeasuredWidth()I

    move-result v6

    int-to-float v3, v6

    .line 330
    .local v3, w:F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    mul-float v1, v3, v6

    .line 338
    .local v1, region:F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 340
    :cond_3
    if-eqz v0, :cond_6

    cmpg-float v6, v4, v1

    if-gez v6, :cond_5

    .line 341
    .local v2, showSettings:Z
    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    .end local v2           #showSettings:Z
    :cond_5
    move v2, v5

    .line 340
    goto :goto_2

    :cond_6
    sub-float v6, v3, v1

    cmpg-float v6, v6, v4

    if-ltz v6, :cond_4

    move v2, v5

    goto :goto_2

    .line 341
    .restart local v2       #showSettings:Z
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 268
    return-void
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    .line 359
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 360
    return-void

    .line 355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
