.class public Lcom/android/systemui/statusbar/policy/SmartBondingController;
.super Landroid/content/BroadcastReceiver;
.source "SmartBondingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.SmartBondingController"


# instance fields
.field private isSelected:Z

.field private mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFileSize:J

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

.field private mThreadID:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 58
    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    .line 59
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->isSelected:Z

    .line 183
    new-instance v1, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    .line 68
    const-string v1, "sb_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SB_SHOW_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.SB_HIDE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/SmartBondingController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/SmartBondingController;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->setSBUsageStatus(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->isSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/SmartBondingController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->isSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private createSmartBondingUsageAlert()V
    .locals 17

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 94
    const-string v10, "StatusBar.SmartBondingController"

    const-string v11, "createSmartBondingUsageAlert : dialog is already exist"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 98
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 99
    .local v8, usageLayout:Landroid/view/LayoutInflater;
    const v10, 0x7f04002b

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 101
    .local v9, usageView:Landroid/view/View;
    const-string v5, ""

    .line 102
    .local v5, message:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->isWifiConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0186

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    :goto_1
    const-string v10, "%s"

    const-string v11, "<img src=\"booster_icon\"/>"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 111
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 112
    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    long-to-double v13, v13

    const-wide/high16 v15, 0x4090

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x4090

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, fileSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0188

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, extMessage:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->isLandsacpe()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 115
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    .end local v3           #extMessage:Ljava/lang/String;
    .end local v4           #fileSize:Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v10, "\n"

    const-string v11, "<br/>"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 123
    const v10, 0x7f0700ba

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 124
    .local v6, textView:Landroid/widget/TextView;
    new-instance v10, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v10, 0x7f0700bb

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 128
    .local v2, disableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v10, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v10}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    const/4 v7, 0x0

    .line 139
    .local v7, theme:I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->isLightTheme()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 140
    const/4 v7, 0x5

    .line 142
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 145
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a0185

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 146
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 147
    const v10, 0x104000a

    new-instance v11, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    const/high16 v10, 0x104

    new-instance v11, Lcom/android/systemui/statusbar/policy/SmartBondingController$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$3;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v10, :cond_3

    .line 163
    const v10, 0x7f0700ba

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/high16 v11, -0x100

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    const/high16 v10, -0x100

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    :cond_3
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    .line 170
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    new-instance v11, Lcom/android/systemui/statusbar/policy/SmartBondingController$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$4;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d3

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 180
    const-string v10, "StatusBar.SmartBondingController"

    const-string v11, "createSmartBondingUsageAlert : done"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #disableAlertCheckBox:Landroid/widget/CheckBox;
    .end local v6           #textView:Landroid/widget/TextView;
    .end local v7           #theme:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0187

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 117
    .restart local v3       #extMessage:Ljava/lang/String;
    .restart local v4       #fileSize:Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method

.method private isLandsacpe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 208
    :cond_0
    return v0
.end method

.method private isLightTheme()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 215
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 216
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 222
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 219
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setSBUsageStatus(IJ)V
    .locals 4
    .parameter "status"
    .parameter "threadID"

    .prologue
    .line 193
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBUsageStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "StatusBar.SmartBondingController"

    const-string v2, "call setSBUsageStatus in ISmartBondingService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/smartbonding/ISmartBondingService;->setSBUsageStatus(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBUsageStatus Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v4, -0x1

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "android.intent.action.SB_SHOW_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const-string v1, "threadID"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 83
    const-string v1, "fileSize"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    .line 84
    const-string v1, "appName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "android.intent.action.SB_HIDE_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "threadID"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
