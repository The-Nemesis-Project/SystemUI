.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$1;,
        Lcom/android/systemui/statusbar/CommandQueue$H;,
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;,
        Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUDE_COMPAT_MODE_PANEL:I = 0x10

.field public static final FLAG_EXCLUDE_INPUT_METHODS_PANEL:I = 0x8

.field public static final FLAG_EXCLUDE_NONE:I = 0x0

.field public static final FLAG_EXCLUDE_NOTIFICATION_PANEL:I = 0x4

.field public static final FLAG_EXCLUDE_RECENTS_PANEL:I = 0x2

.field public static final FLAG_EXCLUDE_SEARCH_PANEL:I = 0x1

.field private static final INDEX_MASK:I = 0xffff

.field private static final MSG_ADD_NOTIFICATION:I = 0x20000

.field private static final MSG_APPLY_EDMPOLICY:I = 0x150000

.field private static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0xf0000

.field private static final MSG_COLLAPSE_PANELS:I = 0x70000

.field private static final MSG_DISABLE:I = 0x50000

.field private static final MSG_EXPAND_NOTIFICATIONS:I = 0x60000

.field private static final MSG_EXPAND_SETTINGS:I = 0x80000

.field private static final MSG_HIDE_CALLONGOING:I = 0x130000

.field private static final MSG_ICON:I = 0x10000

.field private static final MSG_LAST:I = 0x10

.field private static final MSG_MASK:I = -0x10000

.field private static final MSG_PRELOAD_RECENT_APPS:I = 0xe0000

.field private static final MSG_REMOVE_NOTIFICATION:I = 0x40000

.field private static final MSG_SET_HARD_KEYBOARD_STATUS:I = 0xc0000

.field private static final MSG_SET_MAX_BRIGHTNESS:I = 0x110000

.field private static final MSG_SET_SYSTEMUI_VISIBILITY:I = 0x90000

.field private static final MSG_SET_WINDOW_STATE:I = 0x100000

.field private static final MSG_SHIFT:I = 0x10

.field private static final MSG_SHOW_CALLONGOING:I = 0x120000

.field private static final MSG_SHOW_IME_BUTTON:I = 0xb0000

.field private static final MSG_TOGGLE_NOTIFICATION_PANEL:I = 0x140000

.field private static final MSG_TOGGLE_RECENT_APPS:I = 0xd0000

.field private static final MSG_TOP_APP_WINDOW_CHANGED:I = 0xa0000

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x30000

.field private static final OP_REMOVE_ICON:I = 0x2

.field private static final OP_SET_ICON:I = 0x1


# instance fields
.field private mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/android/internal/statusbar/StatusBarIconList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V
    .locals 2
    .parameter "callbacks"
    .parameter "list"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 135
    iput-object p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 136
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    return-object v0
.end method


# virtual methods
.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 156
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    .line 157
    .local v0, ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 158
    iput-object p2, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 160
    monitor-exit v2

    .line 161
    return-void

    .line 160
    .end local v0           #ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateCollapsePanels()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandSettingsPanel()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public applyEDMPolicy()V
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 6

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    monitor-exit v1

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disable(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hideCallOnGoingView()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public preloadRecentApps()V
    .locals 6

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeIcon(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 148
    const/high16 v1, 0x1

    or-int v0, v1, p1

    .line 149
    .local v0, what:I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 151
    monitor-exit v2

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 6
    .parameter "available"
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v5, 0xc

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v5, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 234
    monitor-exit v3

    .line 235
    return-void

    :cond_0
    move v2, v1

    .line 232
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .parameter "index"
    .parameter "icon"

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 140
    const/high16 v1, 0x1

    or-int v0, v1, p1

    .line 141
    .local v0, what:I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 143
    monitor-exit v2

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 3
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb

    invoke-virtual {v0, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxBrightness(I)V
    .locals 5
    .parameter "maxLevel"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemUiVisibility(II)V
    .locals 4
    .parameter "vis"
    .parameter "mask"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowState(II)V
    .locals 4
    .parameter "window"
    .parameter "state"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showCallOnGoingView()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggleNotificationPanel()V
    .locals 6

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    monitor-exit v1

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggleRecentApps()V
    .locals 6

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topAppWindowChanged(Z)V
    .locals 6
    .parameter "menuVisible"

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 165
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    .line 166
    .local v0, ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 167
    iput-object p2, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 169
    monitor-exit v2

    .line 170
    return-void

    .line 169
    .end local v0           #ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
