.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final ENABLED_SERVICES_SEPARATOR:C = ':'

.field public static final LINE_RESTRICTION:I = 0xc

.field public static final MIDIUM_DENSITY:I = 0xa0

.field public static final STATUS_DIM:I = 0x3

.field public static final STATUS_OFF:I = 0x2

.field public static final STATUS_OFF2:I = 0x5

.field public static final STATUS_ON:I = 0x1

.field public static final STATUS_ON2:I = 0x4

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-QuickSettingButton"

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private buttonDivider:Landroid/view/View;

.field private mActivateStatus:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnImage:Landroid/widget/ImageView;

.field private mBtnLED:Landroid/widget/ImageView;

.field private mBtnText:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDimIconID:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsProcessing:Z

.field private mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

.field private mOffIconID:I

.field private mOffIconID2:I

.field private mOnIconID:I

.field private mOnIconID2:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mText:Ljava/lang/String;

.field private mTextID:I

.field private mTogImgColor:I

.field private mTogImgColoring:Z

.field private mTogTxtColor:I

.field private mTogTxtColoring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "textId"
    .parameter "onIconId"
    .parameter "offIconId"
    .parameter "dimIconId"
    .parameter "onIconId2"
    .parameter "offIconId2"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 73
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 75
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    .line 416
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    .line 123
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 128
    const v0, 0x7f040044

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f090107

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->buttonDivider:Landroid/view/View;

    .line 134
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 135
    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 136
    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 137
    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 138
    iput p7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 139
    iput p8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 141
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setGravity(I)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setFocusable(Z)V

    .line 143
    const v0, 0x7f0201fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setBackgroundResource(I)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private checkContentDescription()V
    .locals 5

    .prologue
    .line 389
    const-string v1, ""

    .line 390
    .local v1, str:Ljava/lang/String;
    const/4 v0, -0x1

    .line 391
    .local v0, hasNewLine:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 393
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 395
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, str1:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 400
    .end local v2           #str1:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkToggleSettings()V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mContentResolver:Landroid/content/ContentResolver;
    const-string v1, "toggle_custom_textcolor"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogTxtColoring:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogTxtColoring:Z

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v1, 0x7f0a0008

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogTxtColor:I

    const-string v1, "toggle_custom_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogImgColoring:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogImgColoring:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogImgColor:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "statusbar_toggletext_color"

    const v2, -0x614d3d

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const-string v1, "statusbar_toggle_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method public applySsid(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "ssid"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogTxtColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method protected callActivity(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 309
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, mIntent:Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 310
    .end local v0           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected callActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pkg"
    .parameter "activity"

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 294
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v0, mIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 295
    .end local v0           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public checkTextLength()V
    .locals 20

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 335
    .local v9, r:Landroid/content/res/Resources;
    const v14, 0x7f0e004c

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 336
    .local v6, mCellGap:F
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v14, "custom_toggle_number"

    const/16 v15, 0x14

    invoke-static {v2, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const v14, 0x7f0d0009

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ge v2, v7, :cond_0

    move v7, v2

    .line 338
    .local v7, mCurButtonNum:I
    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 339
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 342
    sget-boolean v14, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v14, :cond_3

    sget-boolean v14, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v14, :cond_3

    .line 343
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 347
    .local v3, displayWidth:I
    :goto_0
    int-to-float v14, v3

    add-int/lit8 v15, v7, -0x1

    int-to-float v15, v15

    mul-float/2addr v15, v6

    sub-float/2addr v14, v15

    int-to-float v15, v7

    div-float/2addr v14, v15

    float-to-int v1, v14

    .line 350
    .local v1, buttonWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v15, 0x0

    const v16, 0x7f0e0047

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/4 v14, 0x2

    if-ge v5, v14, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 355
    .local v10, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 357
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v11, 0x0

    .line 358
    .local v11, textWidth:I
    const-string v14, "\n"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 359
    .local v4, enterIndex:I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_4

    .line 360
    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v11, v14

    .line 371
    :goto_2
    if-eqz v1, :cond_1

    if-nez v11, :cond_6

    .line 372
    :cond_1
    const-string v14, "STATUSBAR-QuickSettingButton"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RETURN - buttonWidth:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], textWidth["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v4           #enterIndex:I
    .end local v8           #paint:Landroid/graphics/Paint;
    .end local v10           #str:Ljava/lang/String;
    .end local v11           #textWidth:I
    :cond_2
    return-void

    .line 345
    .end local v1           #buttonWidth:I
    .end local v3           #displayWidth:I
    .end local v5           #i:I
    :cond_3
    const v14, 0x7f0e007f

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v3, v14

    .restart local v3       #displayWidth:I
    goto :goto_0

    .line 362
    .restart local v1       #buttonWidth:I
    .restart local v4       #enterIndex:I
    .restart local v5       #i:I
    .restart local v8       #paint:Landroid/graphics/Paint;
    .restart local v10       #str:Ljava/lang/String;
    .restart local v11       #textWidth:I
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v10, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v12, v14

    .line 363
    .local v12, width1:I
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v13, v14

    .line 364
    .local v13, width2:I
    if-ge v12, v13, :cond_5

    .line 365
    move v11, v13

    goto :goto_2

    .line 367
    :cond_5
    move v11, v12

    goto :goto_2

    .line 376
    .end local v12           #width1:I
    .end local v13           #width2:I
    :cond_6
    if-ge v1, v11, :cond_2

    .line 379
    const-string v14, "STATUSBAR-QuickSettingButton"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Reduce text : ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] - buttonWidth:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], textWidth["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v15, 0x0

    const v16, 0x7f0e0047

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4320

    div-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public doNext()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public getActivateStatus()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    return v0
.end method

.method protected isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 284
    .local v0, provisioned:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_1

    .line 285
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    .line 287
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    return v1
.end method

.method protected isEnabledScreenReaderService()Z
    .locals 7

    .prologue
    .line 428
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 432
    const-string v3, ""

    .line 435
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 436
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 438
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 441
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 442
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    const/4 v4, 0x1

    .line 446
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public localeChanged()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogTxtColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 323
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 156
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->init()V

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkTextLength()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    .line 181
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    .line 194
    return-void

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkTextLength()V

    .line 329
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->deinit()V

    .line 172
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 203
    if-eqz p2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->buttonDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->buttonDivider:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onLongClick()V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method protected removeEnabledScreenReaderValue()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 450
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 459
    .local v1, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 461
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 462
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, componentNameString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 464
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    :cond_3
    if-eqz v2, :cond_2

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 467
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 470
    .end local v2           #componentNameString:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 473
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setActivateStatus(I)V
    .locals 4
    .parameter "activateStatus"

    .prologue
    const v3, 0x7f0201fa

    const v2, 0x7f0201fb

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkToggleSettings()V

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    .line 217
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogTxtColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 224
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogTxtColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Dim\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 241
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 246
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 247
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogImgColoring:Z

    if-eqz v1, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogImgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTogImgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_1

    .line 224
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setIcon(IIIIII)V
    .locals 0
    .parameter "textId"
    .parameter "onIconId"
    .parameter "offIconId"
    .parameter "dimIconId"
    .parameter "onIconId2"
    .parameter "offIconId2"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 110
    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 111
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 112
    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 113
    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 114
    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 115
    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    .line 176
    return-void
.end method

.method public setOffIconId2(I)V
    .locals 0
    .parameter "offIcon"

    .prologue
    .line 268
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 269
    return-void
.end method

.method public setOnIconId2(I)V
    .locals 0
    .parameter "onIcon"

    .prologue
    .line 272
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 273
    return-void
.end method

.method public setTextId(I)V
    .locals 0
    .parameter "textID"

    .prologue
    .line 259
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 260
    return-void
.end method

.method public setTextId(ILjava/lang/String;)V
    .locals 0
    .parameter "textID"
    .parameter "text"

    .prologue
    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 264
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 265
    return-void
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 4
    .parameter "titleRes"
    .parameter "messageRes"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 481
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 497
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 498
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 503
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 506
    return-void

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method protected statusBarCollapse()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 279
    :cond_0
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method
