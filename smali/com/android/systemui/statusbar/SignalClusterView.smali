.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SignalClusterView"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SignalClusterView"


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field mContext:Landroid/content/Context;

.field mEthernet:Landroid/widget/ImageView;

.field mEthernetActivity:Landroid/widget/ImageView;

.field private mEthernetActivityId:I

.field private mEthernetConnected:Z

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetStateId:I

.field private mEthernetVisible:Z

.field mHandler:Landroid/os/Handler;

.field private mHasService:Z

.field private mIsAirplaneMode:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileDataState:I

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 59
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetConnected:Z

    .line 66
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetStateId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    .line 82
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 83
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/os/Handler;)V

    .local v0, settingsObserver:Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;->observe()V

    .line 101
    return-void
.end method

.method static synthetic access$001(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private apply()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 256
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 370
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ZVV"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 260
    .local v1, isZVVOperator:Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v4, :cond_7

    .line 261
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    const v7, 0x7f020120

    if-ne v4, v7, :cond_5

    .line 265
    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 269
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .end local v2           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v4, :cond_8

    .line 305
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 306
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hide_signal_icon"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 314
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 316
    .local v3, roamingAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    .end local v3           #roamingAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 324
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 326
    .local v0, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    .end local v0           #frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :goto_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v4, :cond_9

    .line 336
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    :goto_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v4, :cond_a

    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :goto_8
    if-eqz v1, :cond_b

    .line 355
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v7, v9, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v7, :cond_4

    :cond_3
    move v6, v5

    :cond_4
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 267
    .restart local v2       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1

    .end local v2           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    move v4, v6

    .line 274
    goto/16 :goto_2

    .line 278
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 332
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 339
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 345
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 364
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v7, v9, :cond_c

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v7, :cond_d

    :cond_c
    move v6, v5

    :cond_d
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 327
    :catch_0
    move-exception v4

    goto :goto_6

    .line 317
    :catch_1
    move-exception v4

    goto :goto_5
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 112
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 113
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 117
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 121
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 125
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 129
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 130
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 137
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 142
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 143
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 145
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 146
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    .line 149
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 150
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 151
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 152
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 153
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 154
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 157
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 158
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 162
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 163
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .parameter "layoutDirection"

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 252
    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0
    .parameter "btState"

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 385
    return-void
.end method

.method public setDataState(I)V
    .locals 0
    .parameter "dataState"

    .prologue
    .line 378
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 379
    return-void
.end method

.method public setEthernetIndicators(ZZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "connected"
    .parameter "stateIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 181
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetConnected:Z

    .line 182
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetStateId:I

    .line 183
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    .line 184
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 187
    return-void
.end method

.method public setHasService(Z)V
    .locals 0
    .parameter "hasService"

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    .line 391
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .parameter "is"
    .parameter "airplaneIconId"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 206
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 209
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 194
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 195
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 196
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 197
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 198
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 201
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 106
    return-void
.end method

.method public setRoamingIcon(I)V
    .locals 0
    .parameter "roamingIconId"

    .prologue
    .line 374
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 375
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 169
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 170
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 171
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 174
    return-void
.end method

.method public updateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_signal_icon"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
