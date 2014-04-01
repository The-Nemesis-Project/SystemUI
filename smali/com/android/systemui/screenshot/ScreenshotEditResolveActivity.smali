.class public Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ScreenshotEditResolveActivity.java"


# static fields
.field private static final FLASH_ANNOTATE_CLASS_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate.FlashAnnotateActivity"

.field private static final FLASH_ANNOTATE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate"

.field private static final PAPER_ARTIST_CLASS_NAME:Ljava/lang/String; = "com.dama.paperartist.PaperArtistActivity"

.field private static final PAPER_ARTIST_PACKAGE_NAME:Ljava/lang/String; = "com.dama.paperartist"

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final PSTOUCH_CLASS_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1.AppEntry"

.field private static final PSTOUCH_PACKAGE_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1"

.field private static final SAVED_FILE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final SCREENCAPTURE_NAME:Ljava/lang/String; = ".screenshotEdits"

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotEditResolveActivity"

.field private static final mMimeType:Ljava/lang/String; = "image/png"


# instance fields
.field private mEditFile:Ljava/io/File;

.field private mFileUri:Landroid/net/Uri;

.field private mImageDirPath:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    return-void
.end method

.method private addFlashAnnotateIntent(Ljava/util/List;Landroid/content/Intent;)Z
    .locals 15
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, currentResolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v12, "com.sec.spen.flashannotate"

    invoke-direct {p0, v12}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 279
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".screenshotEdits"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, outFileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 283
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 285
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 286
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 288
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 289
    .local v2, data:I
    const/16 v12, 0x400

    :try_start_2
    new-array v1, v12, [B

    .line 290
    .local v1, buffer:[B
    :goto_0
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v6, v1, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_2

    .line 291
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 295
    .end local v1           #buffer:[B
    :catch_0
    move-exception v3

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 296
    .end local v2           #data:I
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :goto_1
    const-string v12, "ScreenshotEditResolveActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fail : file operation error// File in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "File out : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 300
    if-eqz v5, :cond_0

    .line 301
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 304
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 305
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 307
    :cond_1
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 308
    const/4 v12, 0x0

    .line 324
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #outFileName:Ljava/lang/String;
    :goto_4
    return v12

    .line 293
    .restart local v1       #buffer:[B
    .restart local v2       #data:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #outFileName:Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 294
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 311
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v4, editIntent:Landroid/content/Intent;
    const/high16 v12, 0x3401

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    const-string v12, "com.sec.spen.flashannotate"

    const-string v13, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v12, "orientation"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getCurrentOrientation()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v12, "savepath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 319
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v10, v4, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 320
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    const-string v12, "ScreenshotEditResolveActivity"

    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const/4 v12, 0x1

    goto :goto_4

    .line 324
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v4           #editIntent:Landroid/content/Intent;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #outFileName:Ljava/lang/String;
    .end local v10           #packageManager:Landroid/content/pm/PackageManager;
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v12, 0x0

    goto :goto_4

    .line 302
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #outFileName:Ljava/lang/String;
    :catch_1
    move-exception v12

    goto :goto_2

    .line 306
    :catch_2
    move-exception v12

    goto :goto_3

    .line 295
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_1

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private addPaperArtistIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 17
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v14, "com.dama.paperartist"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 133
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".screenshotEdits"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, outFileName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 137
    .local v7, fis:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 139
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 140
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 142
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 143
    .local v2, data:I
    const/16 v14, 0x400

    :try_start_2
    new-array v1, v14, [B

    .line 144
    .local v1, buffer:[B
    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    .line 145
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 149
    .end local v1           #buffer:[B
    :catch_0
    move-exception v3

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 150
    .end local v2           #data:I
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :goto_1
    const-string v14, "ScreenshotEditResolveActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Fail : file operation error// File in : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "File out : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    if-eqz v7, :cond_0

    .line 155
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 158
    :cond_0
    :goto_2
    if-eqz v9, :cond_1

    .line 159
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 161
    :cond_1
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 162
    const/4 v14, 0x0

    .line 188
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #outFileName:Ljava/lang/String;
    :goto_4
    return v14

    .line 147
    .restart local v1       #buffer:[B
    .restart local v2       #data:I
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #outFileName:Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 148
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 165
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v5, editIntent:Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, editFile:Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 172
    .local v6, fileUri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.dama.paperartist"

    const-string v16, "com.dama.paperartist.PaperArtistActivity"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 174
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    const-string v14, "android.intent.action.SEND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v14, "image/png"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    const/high16 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 182
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 183
    .local v13, ri:Landroid/content/pm/ResolveInfo;
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v14, 0x1

    goto :goto_4

    .line 188
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v4           #editFile:Ljava/io/File;
    .end local v5           #editIntent:Landroid/content/Intent;
    .end local v6           #fileUri:Landroid/net/Uri;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #outFileName:Ljava/lang/String;
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    .line 156
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #outFileName:Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_2

    .line 160
    :catch_2
    move-exception v14

    goto :goto_3

    .line 149
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private addPhotoEditorIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 17
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v14, "com.sec.android.mimage.photoretouching"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 194
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".screenshotEdits"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, outFileName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 198
    .local v7, fis:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 200
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 201
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 203
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 204
    .local v2, data:I
    const/16 v14, 0x400

    :try_start_2
    new-array v1, v14, [B

    .line 205
    .local v1, buffer:[B
    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    .line 206
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 210
    .end local v1           #buffer:[B
    :catch_0
    move-exception v3

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 211
    .end local v2           #data:I
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :goto_1
    const-string v14, "ScreenshotEditResolveActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Fail : file operation error// File in : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "File out : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    if-eqz v7, :cond_0

    .line 216
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 219
    :cond_0
    :goto_2
    if-eqz v9, :cond_1

    .line 220
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 222
    :cond_1
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 223
    const/4 v14, 0x0

    .line 248
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #outFileName:Ljava/lang/String;
    :goto_4
    return v14

    .line 208
    .restart local v1       #buffer:[B
    .restart local v2       #data:I
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #outFileName:Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 209
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 226
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v5, editIntent:Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, editFile:Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 233
    .local v6, fileUri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.sec.android.mimage.photoretouching"

    const-string v16, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 235
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    const-string v14, "android.intent.action.SEND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v14, "image/png"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    const/high16 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 243
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 244
    .local v13, ri:Landroid/content/pm/ResolveInfo;
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const/4 v14, 0x1

    goto :goto_4

    .line 248
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v4           #editFile:Ljava/io/File;
    .end local v5           #editIntent:Landroid/content/Intent;
    .end local v6           #fileUri:Landroid/net/Uri;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #outFileName:Ljava/lang/String;
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    .line 217
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #outFileName:Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_2

    .line 221
    :catch_2
    move-exception v14

    goto :goto_3

    .line 210
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private addPsTouchIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 10
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 253
    const-string v7, "air.com.adobe.pstouch.oem1"

    invoke-direct {p0, v7}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v1, editIntent:Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, editFile:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 258
    .local v2, fileUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "air.com.adobe.pstouch.oem1"

    const-string v9, "air.com.adobe.pstouch.oem1.AppEntry"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 260
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v7, "image/png"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const/high16 v7, 0x1

    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 268
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 269
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    const-string v6, "ScreenshotEditResolveActivity"

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v0           #editFile:Ljava/io/File;
    .end local v1           #editIntent:Landroid/content/Intent;
    .end local v2           #fileUri:Landroid/net/Uri;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private getCurrentOrientation()I
    .locals 5

    .prologue
    .line 345
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 346
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 348
    .local v1, display:Landroid/view/Display;
    const/4 v2, 0x1

    .line 349
    .local v2, orientation:I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    int-to-float v0, v4

    .line 351
    .local v0, degree:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 358
    :goto_0
    return v2

    .line 353
    :cond_0
    const/high16 v4, 0x4040

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    .line 354
    const/16 v2, 0x8

    goto :goto_0

    .line 356
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPackageVaild(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 328
    const-string v3, "ScreenshotEditResolveActivity"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 331
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 332
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : return true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v2, 0x1

    .line 340
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 335
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.dama.paperartist is not vaild"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 92
    .local v2, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 97
    .local v7, isLongLifeMode:Z
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 98
    .local v8, notificationManager:Landroid/app/NotificationManager;
    const/16 v0, 0x315

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040aee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 103
    .local v3, title:Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 106
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    const-string v0, "FilePath"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mEditFile:Ljava/io/File;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mEditFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0154

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_0
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 128
    return-void

    .line 113
    :cond_1
    const-string v0, "DirPath"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    .line 115
    if-nez v7, :cond_0

    .line 116
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPaperArtistIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    .line 117
    if-eqz v9, :cond_2

    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 119
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addFlashAnnotateIntent(Ljava/util/List;Landroid/content/Intent;)Z

    .line 122
    :cond_2
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPhotoEditorIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    .line 123
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPsTouchIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    goto :goto_0
.end method
