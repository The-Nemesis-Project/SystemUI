.class public Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;
.super Landroid/widget/LinearLayout;
.source "QuickLaunchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "3Minit"


# instance fields
.field private mButtonImage:Landroid/widget/ImageView;

.field private mButtonText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIC:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;

.field private mPackageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "packageId"

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setOrientation(I)V

    .line 42
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    .line 43
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonImage:Landroid/widget/ImageView;

    .line 47
    const/high16 v4, 0x4234

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    .line 48
    .local v0, dip:I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v3, vlp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mPackageId:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 55
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 58
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mPackageId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mPackageId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->addView(Landroid/view/View;)V

    .line 66
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->addView(Landroid/view/View;)V

    .line 67
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const-string v4, "3Minit"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Quick_launch_button - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mPackageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private collapsePanel()V
    .locals 6

    .prologue
    .line 112
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, service:Ljava/lang/Object;
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 115
    .local v3, statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    .line 116
    const-string v4, "collapse"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 117
    .local v0, collapse:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v0           #collapse:Ljava/lang/reflect/Method;
    .end local v2           #service:Ljava/lang/Object;
    .end local v3           #statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 119
    .restart local v2       #service:Ljava/lang/Object;
    .restart local v3       #statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-string v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 120
    .local v1, collapse2:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1           #collapse2:Ljava/lang/reflect/Method;
    .end local v2           #service:Ljava/lang/Object;
    .end local v3           #statusbarManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mPackageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, LaunchIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->collapsePanel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #LaunchIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Unable to start app"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mIC:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;->ItemChanged(I)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public setItemChanged(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;)V
    .locals 0
    .parameter "ic"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mIC:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;

    .line 34
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .parameter "vis"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->mButtonText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
