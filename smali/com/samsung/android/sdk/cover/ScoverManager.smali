.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field static final SDK_VERSION:I = 0x1000000

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 121
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 127
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 199
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "CoverManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .prologue
    .line 143
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    const-string v1, "CoverManager"

    const-string v2, "getCoverState : This device is not supported cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 374
    :goto_0
    return-object v0

    .line 359
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v8

    .line 360
    .local v8, svc:Lcom/samsung/android/cover/ICoverManager;
    if-eqz v8, :cond_2

    .line 361
    invoke-interface {v8}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v6

    .line 362
    .local v6, coverState:Lcom/samsung/android/cover/CoverState;
    if-eqz v6, :cond_1

    .line 363
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v6, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v6, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v6, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v6, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v6, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .line 366
    .local v0, scoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 368
    .end local v0           #scoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v1, "CoverManager"

    const-string v2, "getCoverState : coverState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #coverState:Lcom/samsung/android/cover/CoverState;
    .end local v8           #svc:Lcom/samsung/android/cover/ICoverManager;
    :cond_2
    :goto_1
    move-object v0, v9

    .line 374
    goto :goto_0

    .line 371
    :catch_0
    move-exception v7

    .line 372
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "CoverManager"

    const-string v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method isSupportCover()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_0

    .line 188
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 182
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 186
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    const-string v0, "CoverManager"

    const-string v1, "registerListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 10
    .parameter "listener"

    .prologue
    .line 247
    const-string v7, "CoverManager"

    const-string v8, "registerListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_0

    .line 249
    const-string v7, "CoverManager"

    const-string v8, "registerListener : This device is not supported cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 253
    :cond_0
    if-nez p1, :cond_1

    .line 254
    const-string v7, "CoverManager"

    const-string v8, "registerListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v8

    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 261
    .local v5, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 262
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 263
    .local v3, delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    move-object v1, v3

    move-object v2, v1

    .line 269
    .end local v1           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .end local v3           #delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .local v2, coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :goto_1
    if-nez v2, :cond_4

    .line 270
    :try_start_1
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    const/4 v7, 0x0

    invoke-direct {v1, p0, p1, v7}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    .end local v2           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v1       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 276
    .local v6, svc:Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_3

    .line 277
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v0, cm:Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 280
    invoke-interface {v6, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 286
    .end local v0           #cm:Landroid/content/ComponentName;
    .end local v6           #svc:Lcom/samsung/android/cover/ICoverManager;
    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v8

    goto :goto_0

    .end local v5           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :catchall_0
    move-exception v7

    :goto_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 283
    .restart local v5       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :catch_0
    move-exception v4

    .line 284
    .local v4, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v7, "CoverManager"

    const-string v9, "RemoteException in registerListener: "

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 286
    .end local v1           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v2       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v1       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    goto :goto_4

    .end local v1           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v2       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :cond_4
    move-object v1, v2

    .end local v2           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v1       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    goto :goto_2

    :cond_5
    move-object v2, v1

    .end local v1           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v2       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    goto :goto_1
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .locals 3
    .parameter "window"
    .parameter "coverMode"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    const-string v1, "CoverManager"

    const-string v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 223
    .local v0, wlp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 224
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    const-string v0, "CoverManager"

    const-string v1, "unregisterListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 307
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_0

    .line 309
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    return-void

    .line 313
    :cond_0
    if-nez p1, :cond_1

    .line 314
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 322
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 324
    .local v1, delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 325
    move-object v0, v1

    .line 330
    .end local v1           #delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :cond_3
    if-nez v0, :cond_4

    .line 331
    monitor-exit v6

    goto :goto_0

    .line 344
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 335
    .restart local v3       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 336
    .local v4, svc:Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_5

    .line 337
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 338
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    .end local v4           #svc:Lcom/samsung/android/cover/ICoverManager;
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 341
    :catch_0
    move-exception v2

    .line 342
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
