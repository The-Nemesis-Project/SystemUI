.class public Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SmartScrollQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;
    }
.end annotation


# static fields
.field private static final DB_FACE_SMART_SCROLL:Ljava/lang/String; = "face_smart_scroll"

.field private static final DB_SMART_SCROLL_ON:Ljava/lang/String; = "smart_scroll"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SmartScroll"


# instance fields
.field private mButtonStatus:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFaceState:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

.field private mSmartState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v1, 0x7f0a00eb

    const/4 v6, 0x0

    .line 73
    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 65
    iput v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 75
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_1

    .line 76
    const v2, 0x7f02020d

    const v3, 0x7f02020c

    const v4, 0x7f020206

    const v5, 0x7f020207

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIII)V

    .line 88
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    .line 90
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 91
    return-void

    :cond_0
    move v0, v6

    .line 73
    goto :goto_0

    .line 83
    :cond_1
    const v0, 0x7f02020f

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(II)V

    .line 85
    const v0, 0x7f02020b

    const v1, 0x7f02020e

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setAltIcon(II)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    return p1
.end method

.method private updateStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 160
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 161
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 162
    const-string v1, "STATUSBAR-SmartScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v1, v5, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 173
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, smart_scroll_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 176
    return-void

    .line 167
    .end local v0           #smart_scroll_changed:Landroid/content/Intent;
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 169
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->updateStatus()V

    .line 225
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_smart_scroll"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_smart_scroll"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    if-eqz v0, :cond_3

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    if-eqz v0, :cond_2

    .line 104
    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 116
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v0, v2

    .line 100
    goto :goto_1

    .line 107
    :cond_2
    iput v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 108
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_2

    .line 111
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 112
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_2
.end method

.method public onClick(Z)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "STATUSBAR-SmartScroll"

    const-string v1, "Processing... return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string v0, "STATUSBAR-SmartScroll"

    const-string v1, "onClick(): SmartScrollQuickSetting mode change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v0, v3, :cond_3

    .line 142
    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 155
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->updateStatus()V

    goto :goto_0

    .line 143
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-nez v0, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const v0, 0x7f0a0100

    const v1, 0x7f0a0101

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 151
    :cond_4
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    goto :goto_1

    .line 152
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v0, v4, :cond_2

    .line 153
    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SmartScrollAdvancedSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->onChange(Z)V

    .line 235
    return-void
.end method
