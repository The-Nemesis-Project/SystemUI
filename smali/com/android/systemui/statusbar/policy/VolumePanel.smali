.class public Lcom/android/systemui/statusbar/policy/VolumePanel;
.super Landroid/widget/LinearLayout;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel-SystemUI"


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBarExpanded:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIcon:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTracking:Z

.field private final mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    .line 68
    new-instance v1, Lcom/android/systemui/statusbar/policy/VolumePanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/VolumePanel$1;-><init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v1, Lcom/android/systemui/statusbar/policy/VolumePanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/VolumePanel$2;-><init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 97
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mVoiceCapable:Z

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 189
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 181
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 197
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateIcon()V
    .locals 7

    .prologue
    .line 146
    const/4 v3, -0x1

    .line 147
    .local v3, newIcon:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 158
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->values()[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    move-result-object v0

    .local v0, arr$:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 159
    .local v4, s:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    iget v5, v4, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->streamType:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-ne v5, v6, :cond_0

    .line 160
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 158
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v0           #arr$:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    :pswitch_0
    const v3, 0x7f020246

    .line 150
    goto :goto_0

    .line 152
    :pswitch_1
    const v3, 0x7f02023c

    .line 153
    goto :goto_0

    .line 155
    :pswitch_2
    const v3, 0x7f020242

    goto :goto_0

    .line 162
    .restart local v0       #arr$:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #s:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    :pswitch_3
    iget v3, v4, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconVibrateRes:I

    .line 163
    goto :goto_2

    .line 165
    :pswitch_4
    iget v3, v4, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconMuteRes:I

    .line 166
    goto :goto_2

    .line 168
    :pswitch_5
    iget v3, v4, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconRes:I

    goto :goto_2

    .line 173
    .end local v4           #s:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    return-void

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private updateVolume()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    if-nez v3, :cond_0

    .line 128
    invoke-static {}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    .line 130
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-nez v3, :cond_3

    :cond_1
    move v0, v2

    .line 132
    .local v0, plusOne:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamMaxVolume(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 133
    iget v3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-eq v3, v5, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-nez v3, :cond_4

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 140
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateIcon()V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 143
    return-void

    .end local v0           #plusOne:I
    :cond_3
    move v0, v1

    .line 130
    goto :goto_0

    .line 137
    .restart local v0       #plusOne:I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMin(I)V

    goto :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    return-void
.end method

.method public onBarCollapse()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    .line 242
    return-void
.end method

.method public onBarExpand()V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    .line 238
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 114
    const v1, 0x7f0700bf

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setMuteAnimation(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mIcon:Landroid/widget/ImageView;

    .line 120
    const v1, 0x7f0700c0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 121
    .local v0, settingsButton:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    .line 124
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 206
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    const/16 v1, 0x1000

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/policy/VolumePanel;->setStreamVolume(III)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateIcon()V

    .line 222
    :cond_1
    return-void

    .line 212
    :pswitch_0
    const-string v0, "VolumePanel-SystemUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    .line 227
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    .line 232
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 233
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 178
    return-void
.end method
