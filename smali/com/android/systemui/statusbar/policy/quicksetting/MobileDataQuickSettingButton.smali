.class public Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "MobileDataQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;
    }
.end annotation


# static fields
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final DB_MOBILE_DATA_SECONDARY:Ljava/lang/String; = "mobile_data_secondary"

.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-MobileDataQuickSettingButton"

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private isAirPlaneMode:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileData:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 180
    const v3, 0x7f0c00d9

    const v4, 0x7f0201b5

    const v5, 0x7f0201b4

    const v6, 0x7f0201b3

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    .line 192
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 193
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 200
    return-void

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileDataAsSlot(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getMobileData()Z
    .locals 4

    .prologue
    .line 314
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 316
    .local v0, SimState:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 318
    .local v1, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 333
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 341
    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 338
    :cond_3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    goto :goto_0
.end method

.method private getMobileDataAsSlot(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 514
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 516
    .local v0, SimState:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 518
    .local v1, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 532
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isSimReady()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 376
    .local v0, SimState:I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 381
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0112

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 383
    const v4, 0x7f0c0113

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 385
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->statusBarCollapse()V

    .line 393
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 396
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 404
    .local v2, kgm:Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 409
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 412
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #kgm:Landroid/app/KeyguardManager;
    :goto_1
    return v3

    .line 407
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #kgm:Landroid/app/KeyguardManager;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #kgm:Landroid/app/KeyguardManager;
    :cond_2
    move v3, v4

    .line 412
    goto :goto_1
.end method

.method private onDisplayMobileDataOffAlert()V
    .locals 10

    .prologue
    const v9, 0x7f090111

    const/high16 v8, -0x100

    .line 440
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 442
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v6, 0x7f040047

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 446
    .local v4, mMobileDataAlertView:Landroid/view/View;
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    if-eqz v6, :cond_0

    .line 447
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 448
    .local v5, mTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0107

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .end local v5           #mTextView:Landroid/widget/TextView;
    :cond_0
    const v6, 0x7f090112

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 454
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 469
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c00d9

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 471
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 472
    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    const/high16 v6, 0x104

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v6, :cond_1

    .line 487
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->statusBarCollapse()V

    .line 495
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 498
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 504
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 505
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 506
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 510
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 511
    return-void

    .line 508
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private onORGDisplayMobileDataOffAlert()V
    .locals 4

    .prologue
    .line 536
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c00d9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 538
    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 539
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 540
    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$8;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 546
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$9;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->statusBarCollapse()V

    .line 556
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 557
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 558
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 559
    return-void
.end method

.method private onORGDisplayMobileDataOnAlert()V
    .locals 4

    .prologue
    .line 563
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 564
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c00d9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 565
    const v2, 0x7f0c00a5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 566
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 567
    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$10;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$11;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->statusBarCollapse()V

    .line 583
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 584
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 585
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 586
    return-void
.end method

.method private setMobileData(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_mobiledata_checked"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 347
    .local v0, mChecked:I
    const-string v1, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile data waring checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onDisplayMobileDataOffAlert()V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    .line 417
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 419
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 423
    const-string v1, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled : set to  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    const-string v1, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v2, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setORGMobileData(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 357
    const-string v0, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orange Mobile data waring checked on : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-nez p1, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onORGDisplayMobileDataOffAlert()V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onORGDisplayMobileDataOnAlert()V

    goto :goto_0
.end method

.method private updateActivateStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 367
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    .line 369
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    const-string v1, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() : mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public onClick(Z)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v2, :cond_1

    .line 229
    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileData  onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 239
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v3, "onClick(): MobileData state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 244
    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v3, "onClick(): MobileData is not allowed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    .line 251
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    if-ne v2, v6, :cond_4

    .line 253
    sget-object v2, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v3, 0x7f0c010a

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 254
    sget-object v2, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 259
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v2, :cond_5

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "toddler_mode_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, isToddlerMode:I
    if-ne v1, v6, :cond_5

    .line 263
    sget-object v2, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v3, 0x7f0c010b

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 264
    sget-object v2, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 267
    .end local v1           #isToddlerMode:I
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v3, "SettingNotFoundException - MobileDataQuickSettingButton"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isSimReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    if-eq p1, v2, :cond_0

    .line 275
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 276
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setORGMobileData(Z)V

    goto/16 :goto_0

    .line 278
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setMobileData(Z)V

    goto/16 :goto_0
.end method

.method public onLongClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    const-string v0, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v1, "onLongClick(): MobileData state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    .line 295
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    if-ne v0, v3, :cond_2

    .line 296
    const-string v0, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v1, "MobileData Long - disabled in Airplanemode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 299
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 303
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mLinkToCdmaSetting:Z

    if-eqz v0, :cond_3

    .line 305
    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_3
    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->onChange(Z)V

    .line 591
    return-void
.end method
