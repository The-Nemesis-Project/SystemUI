.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field mAm:Landroid/app/IActivityManager;

.field mContext:Landroid/content/Context;

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsBasedLandscape:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mScreenshotDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 17
    .parameter "context"
    .parameter "data"
    .parameter "nManager"
    .parameter "nId"

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 151
    new-instance v13, Landroid/os/Binder;

    invoke-direct {v13}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    .line 152
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    .line 156
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 159
    .local v11, r:Landroid/content/res/Resources;
    const-string v13, "ro.build.type"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "eng"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 160
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    .line 166
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const/16 v16, 0x1

    invoke-interface/range {v13 .. v16}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 167
    const-string v13, "SaveImageInBackgroundTask"

    const-string v14, "SaveImageInBackgroundTask setProcessForeground true"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 173
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, imageDate:Ljava/lang/String;
    const-string v13, "Screenshot_%s.png"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 176
    new-instance v13, Ljava/io/File;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    const-string v15, "Screenshots"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 178
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 182
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 183
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 185
    .local v5, iconSize:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    if-ge v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 186
    .local v12, shortSide:I
    :goto_2
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-static {v12, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 187
    .local v10, preview:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 189
    .local v9, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 190
    .local v4, desat:Landroid/graphics/ColorMatrix;
    const/high16 v13, 0x3e80

    invoke-virtual {v4, v13}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 191
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v13, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 192
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .local v7, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v13, v12, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 195
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v13, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 196
    const v13, 0x40ffffff

    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 197
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    const/4 v13, 0x1

    invoke-static {v10, v5, v5, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 202
    .local v3, croppedIcon:Landroid/graphics/Bitmap;
    sget-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v13, :cond_2

    const/4 v13, 0x1

    :goto_3
    sput-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 203
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 204
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 205
    new-instance v14, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0a003f

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v13, :cond_3

    const-string v13, " "

    :goto_4
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0a0040

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0a0041

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0200ba

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 213
    new-instance v13, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v13}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v13, v10}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 218
    .local v8, n:Landroid/app/Notification;
    iget v13, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v13, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p4

    invoke-virtual {v13, v0, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 228
    return-void

    .line 162
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v4           #desat:Landroid/graphics/ColorMatrix;
    .end local v5           #iconSize:I
    .end local v6           #imageDate:Ljava/lang/String;
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v8           #n:Landroid/app/Notification;
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #preview:Landroid/graphics/Bitmap;
    .end local v12           #shortSide:I
    :cond_0
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    goto/16 :goto_0

    .line 185
    .restart local v5       #iconSize:I
    .restart local v6       #imageDate:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    goto/16 :goto_2

    .line 202
    .restart local v2       #c:Landroid/graphics/Canvas;
    .restart local v3       #croppedIcon:Landroid/graphics/Bitmap;
    .restart local v4       #desat:Landroid/graphics/ColorMatrix;
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v9       #paint:Landroid/graphics/Paint;
    .restart local v10       #preview:Landroid/graphics/Bitmap;
    .restart local v12       #shortSide:I
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 205
    :cond_3
    const-string v13, ""

    goto/16 :goto_4

    .line 168
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v4           #desat:Landroid/graphics/ColorMatrix;
    .end local v5           #iconSize:I
    .end local v6           #imageDate:Ljava/lang/String;
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #preview:Landroid/graphics/Bitmap;
    .end local v12           #shortSide:I
    :catch_0
    move-exception v13

    goto/16 :goto_1
.end method

.method private getCurrentDegree()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 487
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 488
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 489
    .local v1, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 491
    .local v2, displaySize:Landroid/graphics/Point;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    int-to-float v0, v4

    .line 492
    .local v0, degree:F
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 494
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x4000

    cmpl-float v4, v0, v4

    if-nez v4, :cond_3

    .line 495
    :cond_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_2

    .line 496
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    .line 507
    :cond_1
    :goto_0
    return v0

    .line 498
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0

    .line 500
    :cond_3
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x4040

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    .line 501
    :cond_4
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_5

    .line 502
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0

    .line 504
    :cond_5
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 474
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 476
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 477
    const/4 v2, 0x1

    .line 482
    :cond_0
    :goto_0
    return v2

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 32
    .parameter "params"

    .prologue
    .line 232
    const-string v27, "SaveImageInBackgroundTask"

    const-string v28, "SaveImageInBackgroundTask setProcessForeground doInBackground"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    const/16 v27, 0x0

    .line 375
    :goto_0
    return-object v27

    .line 234
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 236
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v29

    const/16 v30, 0x0

    invoke-interface/range {v27 .. v30}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 237
    const-string v27, "SaveImageInBackgroundTask"

    const-string v28, "SaveImageInBackgroundTask doInBackground isCancelled setProcessForeground false"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 240
    :goto_1
    const/16 v27, 0x0

    aget-object v27, p1, v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 241
    const/16 v27, 0x0

    aget-object v27, p1, v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 242
    const/16 v27, 0x0

    goto :goto_0

    .line 247
    :cond_1
    const/16 v27, -0x2

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    .line 249
    const/16 v27, 0x0

    aget-object v27, p1, v27

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 250
    .local v5, context:Landroid/content/Context;
    const/16 v27, 0x0

    aget-object v27, p1, v27

    move-object/from16 v0, v27

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 251
    .local v13, image:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 252
    .local v19, r:Landroid/content/res/Resources;
    const/4 v15, 0x0

    .line 253
    .local v15, imageFile:Ljava/io/File;
    const/16 v17, 0x0

    .line 254
    .local v17, out:Ljava/io/OutputStream;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string v28, "com.sec.feature.spen_usp"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 258
    .local v12, hasSPenUspFeature:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z

    .line 262
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x3e8

    div-long v7, v27, v29

    .line 264
    .local v7, dateSeconds:J
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 265
    .end local v15           #imageFile:Ljava/io/File;
    .local v16, imageFile:Ljava/io/File;
    :try_start_2
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 266
    .end local v17           #out:Ljava/io/OutputStream;
    .local v18, out:Ljava/io/OutputStream;
    const/16 v27, 0x1

    :try_start_3
    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x64

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 267
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 269
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v26, values:Landroid/content/ContentValues;
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 271
    .local v20, resolver:Landroid/content/ContentResolver;
    const-string v27, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v27, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v27, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v27, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 275
    const-string v27, "date_added"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    const-string v27, "date_modified"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    const-string v27, "mime_type"

    const-string v28, "image/png"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v27, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v27, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v27, "_size"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    sget-object v27, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v24

    .line 284
    .local v24, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v27, "android.intent.action.DELETE"

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v9, deleteIntent:Landroid/content/Intent;
    const-string v27, "FilePath"

    const-string v28, "%s/%s/%s"

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget-object v31, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "Screenshots"

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-class v27, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v27

    invoke-virtual {v9, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v27, v0

    const v28, 0x7f020189

    const v29, 0x104064c

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/high16 v31, 0x1000

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v5, v0, v9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    invoke-virtual/range {v27 .. v30}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 297
    const-string v27, "%s/%s/"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    sget-object v30, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "Screenshots"

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, imageDirPath:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v27, "android.intent.action.SEND"

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v11, editIntent:Landroid/content/Intent;
    const-string v27, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v27, "DirPath"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v27, "degree"

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 305
    const-string v27, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const-class v27, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const v27, 0x10008000

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v27, v0

    const v28, 0x7f02018a

    const v29, 0x1040aee

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/high16 v31, 0x1000

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v5, v0, v11, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    invoke-virtual/range {v27 .. v30}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 315
    new-instance v27, Ljava/text/SimpleDateFormat;

    const-string v28, "hh:mma, MMM dd, yyyy"

    invoke-direct/range {v27 .. v28}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v28, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v29, v0

    invoke-direct/range {v28 .. v30}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v27 .. v28}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    .line 317
    .local v23, subjectDate:Ljava/lang/String;
    const-string v27, "Screenshot (%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v23, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 318
    .local v22, subject:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    const-string v27, "android.intent.action.SEND"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v21, sharingIntent:Landroid/content/Intent;
    const-string v27, "image/png"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v27, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    const-string v27, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 324
    .local v4, chooserIntent:Landroid/content/Intent;
    const v27, 0x10008000

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v27, v0

    const v28, 0x7f02018b

    const v29, 0x10407c8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/high16 v31, 0x1000

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v5, v0, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    invoke-virtual/range {v27 .. v30}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 331
    const/16 v27, 0x0

    aget-object v27, p1, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 332
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 333
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 336
    new-instance v6, Landroid/content/Intent;

    const-string v27, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v6, copyIntent:Landroid/content/Intent;
    const-string v27, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "file://"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 343
    .local v25, uriString:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v27, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    .local v3, actionIntent:Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    .end local v3           #actionIntent:Landroid/content/Intent;
    .end local v4           #chooserIntent:Landroid/content/Intent;
    .end local v6           #copyIntent:Landroid/content/Intent;
    .end local v9           #deleteIntent:Landroid/content/Intent;
    .end local v11           #editIntent:Landroid/content/Intent;
    .end local v14           #imageDirPath:Ljava/lang/String;
    .end local v20           #resolver:Landroid/content/ContentResolver;
    .end local v21           #sharingIntent:Landroid/content/Intent;
    .end local v22           #subject:Ljava/lang/String;
    .end local v23           #subjectDate:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/Uri;
    .end local v25           #uriString:Ljava/lang/String;
    .end local v26           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_2
    if-eqz v18, :cond_7

    .line 363
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v17, v18

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    move-object/from16 v15, v16

    .line 371
    .end local v7           #dateSeconds:J
    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    .line 372
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 375
    :cond_4
    const/16 v27, 0x0

    aget-object v27, p1, v27

    goto/16 :goto_0

    .line 347
    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .restart local v7       #dateSeconds:J
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    :cond_5
    :try_start_5
    const-string v27, "SaveImageInBackgroundTask"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Fail to create capture image file ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 350
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 351
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 354
    :catch_0
    move-exception v10

    move-object/from16 v17, v18

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    move-object/from16 v15, v16

    .line 357
    .end local v7           #dateSeconds:J
    .end local v16           #imageFile:Ljava/io/File;
    .local v10, e:Ljava/lang/Exception;
    .restart local v15       #imageFile:Ljava/io/File;
    :goto_4
    :try_start_6
    const-string v27, "SaveImageInBackgroundTask"

    const-string v28, "IOException-UnsupportedOperationException may be thrown if external storage is not"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/16 v27, 0x0

    aget-object v27, p1, v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 359
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 361
    if-eqz v17, :cond_3

    .line 363
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 364
    :catch_1
    move-exception v10

    .line 365
    const-string v27, "SaveImageInBackgroundTask"

    const-string v28, "IOException"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 364
    .end local v10           #e:Ljava/lang/Exception;
    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .restart local v7       #dateSeconds:J
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    .line 365
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v27, "SaveImageInBackgroundTask"

    const-string v28, "IOException"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v18

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    move-object/from16 v15, v16

    .line 366
    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_3

    .line 361
    .end local v7           #dateSeconds:J
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v27

    :goto_5
    if-eqz v17, :cond_6

    .line 363
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 366
    :cond_6
    :goto_6
    throw v27

    .line 364
    :catch_3
    move-exception v10

    .line 365
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v28, "SaveImageInBackgroundTask"

    const-string v29, "IOException"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 361
    .end local v10           #e:Ljava/lang/Exception;
    .end local v15           #imageFile:Ljava/io/File;
    .restart local v7       #dateSeconds:J
    .restart local v16       #imageFile:Ljava/io/File;
    :catchall_1
    move-exception v27

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_5

    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v27

    move-object/from16 v17, v18

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_5

    .line 354
    .end local v7           #dateSeconds:J
    :catch_4
    move-exception v10

    goto :goto_4

    .end local v15           #imageFile:Ljava/io/File;
    .restart local v7       #dateSeconds:J
    .restart local v16       #imageFile:Ljava/io/File;
    :catch_5
    move-exception v10

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_4

    .line 238
    .end local v5           #context:Landroid/content/Context;
    .end local v7           #dateSeconds:J
    .end local v12           #hasSPenUspFeature:Z
    .end local v13           #image:Landroid/graphics/Bitmap;
    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .end local v19           #r:Landroid/content/res/Resources;
    :catch_6
    move-exception v27

    goto/16 :goto_1

    .restart local v5       #context:Landroid/content/Context;
    .restart local v7       #dateSeconds:J
    .restart local v12       #hasSPenUspFeature:Z
    .restart local v13       #image:Landroid/graphics/Bitmap;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    .restart local v19       #r:Landroid/content/res/Resources;
    :cond_7
    move-object/from16 v17, v18

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x1000

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 380
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask setProcessForeground onPostExecute"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 383
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 384
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask isCancelled setProcessForeground false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 387
    :goto_0
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 388
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 389
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 471
    :goto_1
    return-void

    .line 393
    :cond_0
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 394
    .local v6, r:Landroid/content/res/Resources;
    iget v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v7, :cond_2

    .line 396
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const v9, 0x7f0a0045

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 464
    :cond_1
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 465
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask setProcessForeground false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 469
    :goto_3
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 470
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_1

    .line 400
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v3, launchIntent:Landroid/content/Intent;
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v8, "image/png"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 404
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v8, 0x7f0a0042

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0a0043

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v8, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 411
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 412
    .local v4, n:Landroid/app/Notification;
    iget v7, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 413
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v7, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 415
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "edit_after_screen_capture"

    const/4 v9, -0x2

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_1

    .line 418
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 419
    .local v5, pM:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v1, directEditIntent:Landroid/content/Intent;
    const-string v7, "%s/%s/"

    new-array v8, v13, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const-string v9, "Screenshots"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, imageDirPath:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v7, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v13, :cond_3

    .line 425
    const/high16 v7, 0x1401

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    const-string v7, "com.sec.spen.flashannotate"

    const-string v8, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v7, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 430
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    :goto_4
    :try_start_2
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 459
    :catch_0
    move-exception v7

    goto/16 :goto_2

    .line 433
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.mimage.photoretouching"

    const-string v8, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .local v0, cn:Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 436
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 439
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v8, "image/png"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v7, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 441
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    .line 445
    :cond_4
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v7, "FilePath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v7, "DirPath"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v7, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 449
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 453
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4

    .line 466
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #directEditIntent:Landroid/content/Intent;
    .end local v2           #imageDirPath:Ljava/lang/String;
    .end local v3           #launchIntent:Landroid/content/Intent;
    .end local v4           #n:Landroid/app/Notification;
    .end local v5           #pM:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .line 385
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
