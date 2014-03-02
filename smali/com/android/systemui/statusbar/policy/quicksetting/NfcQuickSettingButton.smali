.class public Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "NfcQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NfcQuickSettingButton"


# instance fields
.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f0c00e8

    const/4 v7, 0x0

    .line 41
    const v4, 0x7f0201c7

    const v5, 0x7f0201c5

    const v6, 0x7f0201c3

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 22
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_0

    .line 50
    const v4, 0x7f0201c8

    const v5, 0x7f0201c6

    const v6, 0x7f0201c4

    move-object v2, p0

    move v8, v7

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setIcon(IIIIII)V

    .line 59
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x2

    .line 63
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    const-string v1, "STATUSBAR-NfcQuickSettingButton"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    :pswitch_0
    return v0

    .line 69
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    const-string v1, "STATUSBAR-NfcQuickSettingButton"

    const-string v2, "NFC Service is not ready - init"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 100
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setActivateStatus(I)V

    .line 104
    :goto_1
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setActivateStatus(I)V

    goto :goto_1
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 121
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    const-string v1, "NFC Service is not ready - onClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 136
    :cond_4
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    const-string v1, "onClick(): NFC state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 149
    if-eqz p1, :cond_6

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method
