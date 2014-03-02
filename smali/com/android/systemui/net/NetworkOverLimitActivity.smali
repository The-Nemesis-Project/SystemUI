.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkOverLimitActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .locals 1
    .parameter "template"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    const v0, 0x7f0c00a2

    :goto_0
    return v0

    .line 112
    :pswitch_0
    const v0, 0x7f0c009f

    goto :goto_0

    .line 114
    :pswitch_1
    const v0, 0x7f0c00a0

    goto :goto_0

    .line 116
    :pswitch_2
    const v0, 0x7f0c00a1

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLightTheme()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method private isWVGA()Z
    .locals 8

    .prologue
    .line 132
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    .local v0, disp:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    .local v1, dispMetrix:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 138
    .local v3, rawWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 139
    .local v2, rawHeight:I
    if-le v3, v2, :cond_0

    move v4, v2

    .line 140
    .local v4, smallestWidth:I
    :goto_0
    mul-int/lit16 v6, v4, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v5, v6, v7

    .line 143
    .local v5, smallestWidthDensityPixel:I
    const/16 v6, 0x154

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    return v6

    .end local v4           #smallestWidth:I
    .end local v5           #smallestWidthDensityPixel:I
    :cond_0
    move v4, v3

    .line 139
    goto :goto_0

    .line 143
    .restart local v4       #smallestWidth:I
    .restart local v5       #smallestWidthDensityPixel:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 4
    .parameter "template"

    .prologue
    .line 100
    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    .line 103
    .local v1, policyService:Landroid/net/INetworkPolicyManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NetworkOverLimitActivity"

    const-string v3, "problem snoozing network policy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 65
    .local v3, template:Landroid/net/NetworkTemplate;
    const/4 v4, 0x0

    .line 66
    .local v4, theme:I
    invoke-direct {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->isLightTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const/4 v4, 0x5

    .line 69
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v3}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 73
    const v5, 0x7f0c00a3

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 75
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    const v5, 0x7f0c00a4

    new-instance v6, Lcom/android/systemui/net/NetworkOverLimitActivity$1;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/net/NetworkOverLimitActivity$1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 84
    .local v2, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/net/NetworkOverLimitActivity$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$2;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 90
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 91
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->isWVGA()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 95
    .local v0, bu:Landroid/widget/Button;
    const/high16 v5, 0x4170

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 97
    .end local v0           #bu:Landroid/widget/Button;
    :cond_1
    return-void
.end method
