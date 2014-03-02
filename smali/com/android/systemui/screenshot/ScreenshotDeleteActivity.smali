.class public Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;
.super Landroid/app/Activity;
.source "ScreenshotDeleteActivity.java"


# static fields
.field private static final PAPER_ARTIST_CLASS_NAME:Ljava/lang/String; = "com.dama.paperartist.PaperArtistActivity"

.field private static final PAPER_ARTIST_PACKAGE_NAME:Ljava/lang/String; = "com.dama.paperartist"

.field private static final SAVED_FILE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final SCREENCAPTURE_NAME:Ljava/lang/String; = ".screenshotEdits"

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotDeleteActivity"


# instance fields
.field private mDeleteFile:Ljava/io/File;

.field private mImageDirPath:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->requestWindowFeature(I)Z

    .line 76
    const v2, 0x7f040022

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "FilePath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    .line 82
    const-string v2, "ScreenshotDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    .line 85
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0143

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 88
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 89
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const/16 v2, 0x315

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->finish()V

    .line 102
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v2, "android.intent.action.DELETE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->showDialog(I)V

    goto :goto_0

    .line 99
    :cond_1
    const-string v2, "ScreenshotDeleteActivity"

    const-string v3, "Fail : Invaild intent action"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    .local v1, r:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    const v2, 0x1030332

    .line 123
    .local v2, theme:I
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v3, :cond_0

    .line 124
    const v2, 0x1030333

    .line 127
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x1040601

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0046

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 171
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->finish()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "screenshot"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method
