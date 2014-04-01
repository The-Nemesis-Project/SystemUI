.class public Lcom/android/systemui/recent/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Recents"


# instance fields
.field private mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPreloadingRecentTasksList()V
    .locals 4

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    .line 325
    return-void
.end method

.method public closeRecents()V
    .locals 4

    .prologue
    .line 331
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public preloadRecentTasksList()V
    .locals 4

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 312
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    .line 313
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 57
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/systemui/recent/RecentsWindow;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/Recents;->mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;

    .line 60
    :cond_0
    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 48
    .parameter "display"
    .parameter "layoutDirection"
    .parameter "statusBarView"

    .prologue
    .line 67
    :try_start_0
    sget-boolean v44, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v44, :cond_0

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/recent/RecentsWindow;->show()V

    .line 301
    :goto_0
    return-void

    .line 72
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v16

    .line 74
    .local v16, firstTask:Lcom/android/systemui/recent/TaskDescription;
    new-instance v19, Landroid/content/Intent;

    const-string v44, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v19, intent:Landroid/content/Intent;
    const-string v44, "com.android.systemui"

    const-string v45, "com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const/high16 v44, 0x1080

    move-object/from16 v0, v19

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    if-nez v16, :cond_2

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const v45, 0x7f05000d

    const v46, 0x7f05000e

    invoke-static/range {v44 .. v46}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v22

    .line 85
    .local v22, opts:Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v45

    new-instance v46, Landroid/os/UserHandle;

    const/16 v47, -0x2

    invoke-direct/range {v46 .. v47}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v16           #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .end local v19           #intent:Landroid/content/Intent;
    .end local v22           #opts:Landroid/app/ActivityOptions;
    :catch_0
    move-exception v14

    .line 299
    .local v14, e:Landroid/content/ActivityNotFoundException;
    const-string v44, "Recents"

    const-string v45, "Failed to launch RecentAppsIntent"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 89
    .end local v14           #e:Landroid/content/ActivityNotFoundException;
    .restart local v16       #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .restart local v19       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    new-instance v45, Landroid/os/UserHandle;

    const/16 v46, -0x2

    invoke-direct/range {v45 .. v46}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 94
    :cond_2
    const/4 v15, 0x0

    .line 95
    .local v15, first:Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v44

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v44, v0

    if-eqz v44, :cond_4

    .line 96
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v44

    check-cast v44, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 102
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 104
    .local v29, res:Landroid/content/res/Resources;
    const v44, 0x7f0c0003

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v40, v0

    .line 106
    .local v40, thumbWidth:F
    const v44, 0x7f0c0004

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v37, v0

    .line 109
    .local v37, thumbHeight:F
    sget-boolean v44, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v44, :cond_3

    .line 110
    const v44, 0x7f0c00ab

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v40, v0

    .line 112
    const v44, 0x7f0c00ac

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v37, v0

    .line 116
    :cond_3
    if-nez v15, :cond_5

    .line 117
    new-instance v44, Ljava/lang/RuntimeException;

    const-string v45, "Recents thumbnail is null"

    invoke-direct/range {v44 .. v45}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 98
    .end local v29           #res:Landroid/content/res/Resources;
    .end local v37           #thumbHeight:F
    .end local v40           #thumbWidth:F
    :cond_4
    const/16 v44, 0x1

    const/16 v45, 0x1

    sget-object v46, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v44 .. v46}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 100
    .local v10, d:Landroid/graphics/drawable/Drawable;
    new-instance v44, Landroid/graphics/Canvas;

    move-object/from16 v0, v44

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 119
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    .restart local v29       #res:Landroid/content/res/Resources;
    .restart local v37       #thumbHeight:F
    .restart local v40       #thumbWidth:F
    :cond_5
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    cmpl-float v44, v44, v40

    if-nez v44, :cond_6

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    cmpl-float v44, v44, v37

    if-eqz v44, :cond_7

    .line 120
    :cond_6
    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 122
    if-nez v15, :cond_7

    .line 123
    new-instance v44, Ljava/lang/RuntimeException;

    const-string v45, "Recents thumbnail is null"

    invoke-direct/range {v44 .. v45}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 128
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v44

    const-string v45, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v44 .. v45}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v44

    if-lez v44, :cond_d

    const/16 v32, 0x1

    .line 129
    .local v32, showRecentApplicationShortCut:Z
    :goto_2
    if-eqz v32, :cond_8

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 131
    .local v24, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v44

    const-string v45, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v44 .. v45}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 132
    .local v30, shortcutAppList:Ljava/lang/String;
    const-string v44, ","

    invoke-static/range {v44 .. v44}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 133
    .local v5, PATTERN_COMMA:Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v31

    .line 134
    .local v31, shortcutComponentNames:[Ljava/lang/String;
    const/4 v4, 0x4

    .line 136
    .local v4, MAX_NUM_SHORTCUT_BUTTONS:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v18

    move/from16 v1, v44

    if-ge v0, v1, :cond_8

    const/16 v44, 0x4

    move/from16 v0, v18

    move/from16 v1, v44

    if-ge v0, v1, :cond_8

    .line 137
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v34, tempIntent:Landroid/content/Intent;
    aget-object v44, v31, v18

    invoke-static/range {v44 .. v44}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    const/16 v44, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v25

    .line 140
    .local v25, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v25, :cond_e

    .line 142
    const/16 v32, 0x1

    .line 152
    .end local v4           #MAX_NUM_SHORTCUT_BUTTONS:I
    .end local v5           #PATTERN_COMMA:Ljava/util/regex/Pattern;
    .end local v18           #i:I
    .end local v24           #packageManager:Landroid/content/pm/PackageManager;
    .end local v25           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v30           #shortcutAppList:Ljava/lang/String;
    .end local v31           #shortcutComponentNames:[Ljava/lang/String;
    .end local v34           #tempIntent:Landroid/content/Intent;
    :cond_8
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    .local v13, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 159
    .local v9, config:Landroid/content/res/Configuration;
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_f

    .line 160
    const v44, 0x7f0c001a

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v6, v0

    .line 162
    .local v6, appLabelLeftMargin:F
    const v44, 0x7f0c0019

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v7, v0

    .line 164
    .local v7, appLabelWidth:F
    const v44, 0x7f0c0017

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v38, v0

    .line 166
    .local v38, thumbLeftMargin:F
    const v44, 0x7f0c0005

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v36, v0

    .line 169
    .local v36, thumbBgPadding:F
    sget-boolean v44, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v44, :cond_9

    .line 170
    const v44, 0x7f0c00aa

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v6, v0

    .line 172
    const v44, 0x7f0c00b0

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v7, v0

    .line 174
    const v44, 0x7f0c00b3

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v38, v0

    .line 178
    :cond_9
    add-float v44, v6, v7

    add-float v44, v44, v38

    add-float v44, v44, v40

    const/high16 v45, 0x4000

    mul-float v45, v45, v36

    add-float v41, v44, v45

    .line 185
    .local v41, width:F
    const/4 v8, 0x0

    .line 188
    .local v8, buttonMargin:F
    if-eqz v32, :cond_a

    .line 189
    const v44, 0x7f0c00b4

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v8, v0

    .line 192
    :cond_a
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    sub-float v44, v44, v41

    const/high16 v45, 0x4000

    div-float v44, v44, v45

    add-float v44, v44, v6

    add-float v44, v44, v7

    add-float v44, v44, v36

    add-float v44, v44, v38

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v42, v0

    .line 194
    .local v42, x:I
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v44, v0

    const v45, 0x7f0c0004

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    sub-float v44, v44, v36

    const v45, 0x7f0c000f

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    sub-float v44, v44, v8

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v43, v0

    .line 199
    .local v43, y:I
    const/16 v44, 0x1

    move/from16 v0, p2

    move/from16 v1, v44

    if-ne v0, v1, :cond_b

    .line 200
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v44, v0

    sub-int v44, v44, v42

    const v45, 0x7f0c0003

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    sub-int v42, v44, v45

    .line 204
    :cond_b
    sget-boolean v44, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v44, :cond_c

    .line 205
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v45, v0

    const v46, 0x7f0c00ae

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    sub-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    const/high16 v46, 0x4000

    div-float v45, v45, v46

    sub-float v44, v44, v45

    const v45, 0x7f0c0007

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    const v45, 0x7f0c00a3

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    const v46, 0x7f0c00ab

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    sub-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    const/high16 v46, 0x4000

    div-float v45, v45, v46

    sub-float v44, v44, v45

    const v45, 0x7f0c00ab

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v42, v0

    .line 212
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const v45, 0x7f0c00a4

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    const v46, 0x7f0c00ac

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    sub-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    const/high16 v46, 0x4000

    div-float v45, v45, v46

    sub-float v44, v44, v45

    const v45, 0x7f0c00ac

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    const v45, 0x7f0c000f

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v43, v0

    .line 282
    .end local v6           #appLabelLeftMargin:F
    .end local v7           #appLabelWidth:F
    .end local v38           #thumbLeftMargin:F
    .end local v41           #width:F
    :cond_c
    :goto_4
    new-instance v44, Lcom/android/systemui/recent/Recents$1;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/Recents$1;-><init>(Lcom/android/systemui/recent/Recents;)V

    move-object/from16 v0, p3

    move/from16 v1, v42

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-static {v0, v15, v1, v2, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v22

    .line 294
    .restart local v22       #opts:Landroid/app/ActivityOptions;
    const-string v44, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/16 v45, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v45

    new-instance v46, Landroid/os/UserHandle;

    const/16 v47, -0x2

    invoke-direct/range {v46 .. v47}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 128
    .end local v8           #buttonMargin:F
    .end local v9           #config:Landroid/content/res/Configuration;
    .end local v13           #dm:Landroid/util/DisplayMetrics;
    .end local v22           #opts:Landroid/app/ActivityOptions;
    .end local v32           #showRecentApplicationShortCut:Z
    .end local v36           #thumbBgPadding:F
    .end local v42           #x:I
    .end local v43           #y:I
    :cond_d
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 145
    .restart local v4       #MAX_NUM_SHORTCUT_BUTTONS:I
    .restart local v5       #PATTERN_COMMA:Ljava/util/regex/Pattern;
    .restart local v18       #i:I
    .restart local v24       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v25       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v30       #shortcutAppList:Ljava/lang/String;
    .restart local v31       #shortcutComponentNames:[Ljava/lang/String;
    .restart local v32       #showRecentApplicationShortCut:Z
    .restart local v34       #tempIntent:Landroid/content/Intent;
    :cond_e
    const/16 v32, 0x0

    .line 136
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 221
    .end local v4           #MAX_NUM_SHORTCUT_BUTTONS:I
    .end local v5           #PATTERN_COMMA:Ljava/util/regex/Pattern;
    .end local v18           #i:I
    .end local v24           #packageManager:Landroid/content/pm/PackageManager;
    .end local v25           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v30           #shortcutAppList:Ljava/lang/String;
    .end local v31           #shortcutComponentNames:[Ljava/lang/String;
    .end local v34           #tempIntent:Landroid/content/Intent;
    .restart local v9       #config:Landroid/content/res/Configuration;
    .restart local v13       #dm:Landroid/util/DisplayMetrics;
    :cond_f
    const v44, 0x7f0c0008

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v39, v0

    .line 223
    .local v39, thumbTopMargin:F
    const v44, 0x7f0c0005

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v36, v0

    .line 225
    .restart local v36       #thumbBgPadding:F
    const v44, 0x7f0c0018

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v35, v0

    .line 227
    .local v35, textPadding:F
    const v44, 0x7f0c0012

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v21, v0

    .line 229
    .local v21, labelTextSize:F
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 230
    .local v23, p:Landroid/graphics/Paint;
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 231
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v20, v0

    .line 233
    .local v20, labelTextHeight:F
    const v44, 0x7f0c0013

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v12, v0

    .line 235
    .local v12, descriptionTextSize:F
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v11, v0

    .line 239
    .local v11, descriptionTextHeight:F
    const v44, 0x105000c

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v33, v0

    .line 241
    .local v33, statusBarHeight:F
    move/from16 v27, v33

    .line 243
    .local v27, recentsItemTopPadding:F
    add-float v44, v39, v37

    const/high16 v45, 0x4000

    mul-float v45, v45, v36

    add-float v44, v44, v45

    add-float v44, v44, v35

    add-float v44, v44, v20

    add-float v44, v44, v27

    add-float v44, v44, v35

    add-float v17, v44, v11

    .line 247
    .local v17, height:F
    const v44, 0x7f0c001b

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v26, v0

    .line 249
    .local v26, recentsItemRightPadding:F
    const v44, 0x7f0c0016

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v28, v0

    .line 252
    .local v28, recentsScrollViewRightPadding:F
    const/4 v8, 0x0

    .line 255
    .restart local v8       #buttonMargin:F
    if-eqz v32, :cond_10

    .line 256
    const v44, 0x7f0c00b4

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v8, v0

    .line 259
    :cond_10
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v44, v0

    const v45, 0x7f0c0003

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    sub-float v44, v44, v36

    sub-float v44, v44, v26

    sub-float v44, v44, v28

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v42, v0

    .line 263
    .restart local v42       #x:I
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    sub-float v44, v44, v33

    sub-float v44, v44, v17

    sub-float v44, v44, v8

    const/high16 v45, 0x4000

    div-float v44, v44, v45

    add-float v44, v44, v39

    add-float v44, v44, v27

    add-float v44, v44, v36

    add-float v44, v44, v33

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v43, v0

    .line 266
    .restart local v43       #y:I
    sget-boolean v44, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v44, :cond_c

    .line 267
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v44, v0

    const v45, 0x7f0c00ab

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const v45, 0x7f0c00a3

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    const v46, 0x7f0c00ab

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    sub-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    const/high16 v46, 0x4000

    div-float v45, v45, v46

    sub-float v44, v44, v45

    sub-float v44, v44, v26

    sub-float v44, v44, v28

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v42, v0

    .line 272
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v44, v0

    const v45, 0x7f0c000f

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    sub-int v44, v44, v45

    const v45, 0x7f0c00a9

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const v45, 0x7f0c00a4

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    const v46, 0x7f0c00ac

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    sub-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    const/high16 v46, 0x4000

    div-float v45, v45, v46

    sub-float v44, v44, v45

    const v45, 0x7f0c00ac

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v43, v0

    goto/16 :goto_4
.end method
