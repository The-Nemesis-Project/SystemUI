.class public Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "MultiUserModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "STATUSBAR-MultiUserModeQuickSettingButton"


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mText:Landroid/widget/TextView;

.field mUseDefaultAvatar:Z

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const v1, 0x7f0a00da

    const v2, 0x7f020049

    const/4 v3, 0x0

    .line 88
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v4, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 47
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUseDefaultAvatar:Z

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    .line 50
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIII)V

    .line 102
    :goto_1
    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mText:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mImage:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->queryForUserInformation()V

    .line 109
    return-void

    :cond_0
    move v0, v3

    .line 88
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(II)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->queryForUserInformation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 304
    .local v1, copy:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 305
    .local v0, copiedCanvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 307
    return-object v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 288
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 289
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 298
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, canvas:Landroid/graphics/Canvas;
    .restart local p0
    :goto_0
    return-object v2

    .line 292
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 175
    const-string v6, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v7, "queryForUserInformation()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, currentUserContext:Landroid/content/Context;
    const/4 v4, 0x0

    .line 179
    .local v4, userInfo:Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 180
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 188
    :goto_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 189
    .local v3, userId:I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 191
    .local v5, userName:Ljava/lang/String;
    move-object v0, v1

    .line 192
    .local v0, context:Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$3;

    invoke-direct {v6, p0, v5, v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 240
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    return-void

    .line 182
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #userId:I
    .end local v5           #userName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 183
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 185
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 186
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "deinit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 113
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v3, profileFilter:Landroid/content/IntentFilter;
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 141
    const-string v3, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v4, "onClick(view)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 143
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 144
    .local v2, um:Landroid/os/UserManager;
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 146
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v4, "Couldn\'t show user switcher"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    invoke-static {v3, p1, v4, v5, v6}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 136
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "onClick(state)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "onLongClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public refreshView()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 244
    const-string v7, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v8, "refreshView()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 253
    .local v6, source:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0201ce

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 254
    .local v2, mask:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0201cf

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    .local v1, circle:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 259
    .local v4, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .local v5, resultRect:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    invoke-virtual {v0, v6, v10, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 265
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 266
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 267
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 268
    invoke-virtual {v0, v2, v12, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    invoke-virtual {v0, v1, v10, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 274
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 275
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    const/4 v6, 0x0

    .line 278
    const/4 v2, 0x0

    .line 279
    const/4 v1, 0x0

    .line 282
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x7f0a009b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method reloadUserInfo()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "reloadUserInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->queryForUserInformation()V

    .line 172
    return-void
.end method
