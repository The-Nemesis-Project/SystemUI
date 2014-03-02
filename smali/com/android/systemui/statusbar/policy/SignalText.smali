.class public Lcom/android/systemui/statusbar/policy/SignalText;
.super Landroid/widget/TextView;
.source "SignalText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SignalText$SettingsObserver;
    }
.end annotation


# instance fields
.field ASU:I

.field private appendText:Ljava/lang/String;

.field dBm:I

.field private mAttached:Z

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mShowDbm:Z

.field private prependText:Ljava/lang/String;

.field private signal:Landroid/telephony/SignalStrength;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    .line 24
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->ASU:I

    .line 27
    const-string v0, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->prependText:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->appendText:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SignalText$1;-><init>(Lcom/android/systemui/statusbar/policy/SignalText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalText$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SignalText$2;-><init>(Lcom/android/systemui/statusbar/policy/SignalText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/SignalText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    .line 24
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->ASU:I

    .line 27
    const-string v0, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->prependText:Ljava/lang/String;

    .line 28
    const-string v0, " "

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->appendText:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SignalText$1;-><init>(Lcom/android/systemui/statusbar/policy/SignalText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalText$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SignalText$2;-><init>(Lcom/android/systemui/statusbar/policy/SignalText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 50
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalText$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/SignalText$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/SignalText;Landroid/os/Handler;)V

    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/SignalText$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalText$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SignalText;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/SignalText;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->signal:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$101(Lcom/android/systemui/statusbar/policy/SignalText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSettings()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/SignalText;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->signal:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "show_status_dbm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mShowDbm:Z

    .line 135
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mShowDbm:Z

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SignalText;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSignalText()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSignalColor()V

    .line 139
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 132
    goto :goto_0

    .line 138
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalText;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 62
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mAttached:Z

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mAttached:Z

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->prependText:Ljava/lang/String;

    .line 72
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mAttached:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mAttached:Z

    .line 81
    :cond_0
    return-void
.end method

.method final updateAppendText()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "show_dbm_text"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v3, " dBm"

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalText;->appendText:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalText;->appendText:Ljava/lang/String;

    goto :goto_0
.end method

.method final updateSignalColor()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const v10, -0x333334

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dbm_auto_color"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_1

    move v0, v9

    .line 109
    .local v0, autoColor:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dbm_color"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 112
    .local v6, color_regular:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dbm_auto_color_0"

    const v9, -0x15e7e8

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, color_0:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dbm_auto_color_1"

    const v9, -0x2a5d00

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 118
    .local v2, color_1:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dbm_auto_color_2"

    const v9, -0x1313f0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 121
    .local v3, color_2:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dbm_auto_color_3"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 124
    .local v4, color_3:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dbm_auto_color_4"

    const v9, -0x6c2b00

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 127
    .local v5, color_4:I
    if-eqz v0, :cond_7

    .line 128
    iget v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v8, -0x71

    if-eq v7, v8, :cond_8

    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v8, -0x69

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v8, 0x63

    if-ne v7, v8, :cond_3

    .line 129
    :cond_0
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalText;->setTextColor(I)V

    .line 141
    :goto_3
    return-void

    .line 104
    .end local v0           #autoColor:Z
    .end local v1           #color_0:I
    .end local v2           #color_1:I
    .end local v3           #color_2:I
    .end local v4           #color_3:I
    .end local v5           #color_4:I
    .end local v6           #color_regular:I
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_2

    .line 130
    .restart local v0       #autoColor:Z
    .restart local v1       #color_0:I
    .restart local v2       #color_1:I
    .restart local v3       #color_2:I
    .restart local v4       #color_3:I
    .restart local v5       #color_4:I
    .restart local v6       #color_regular:I
    :cond_3
    iget v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v8, -0x4b

    if-le v7, v8, :cond_4

    .line 131
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/SignalText;->setTextColor(I)V

    goto :goto_3

    .line 132
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v8, -0x55

    if-le v7, v8, :cond_5

    .line 133
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/SignalText;->setTextColor(I)V

    goto :goto_3

    .line 134
    :cond_5
    iget v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v8, -0x5f

    if-le v7, v8, :cond_6

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/SignalText;->setTextColor(I)V

    goto :goto_3

    .line 137
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SignalText;->setTextColor(I)V

    goto :goto_3

    .line 139
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/SignalText;->setTextColor(I)V

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SignalText;->signal:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v7

    const/16 v8, -0x1

    if-eq v7, v8, :cond_2

    goto :goto_1
.end method

.method final updateSignalText()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->prependText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    const/16 v2, -0x71

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    :goto_0
    const/16 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateAppendText()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->appendText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText;->signal:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    goto :goto_0
.end method
