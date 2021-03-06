.class Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickLaunchContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickerAdapter"
.end annotation


# instance fields
.field private mAppLogos:[Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mLLayout:Landroid/widget/LinearLayout;

.field private mNames:[Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Landroid/content/Context;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "names"
    .parameter "images"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 357
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mNames:[Ljava/lang/String;

    .line 358
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mAppLogos:[Landroid/graphics/drawable/Drawable;

    .line 359
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mContext:Landroid/content/Context;

    .line 360
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 374
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v5, -0x1

    .line 379
    const/4 v2, 0x1

    const/high16 v3, 0x4248

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 380
    .local v1, px:F
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    float-to-int v2, v1

    invoke-direct {v0, v5, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 382
    .local v0, lp:Landroid/widget/AbsListView$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mLLayout:Landroid/widget/LinearLayout;

    .line 383
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mLLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 384
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mLLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mTextView:Landroid/widget/TextView;

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mImageView:Landroid/widget/ImageView;

    .line 391
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    float-to-int v4, v1

    float-to-int v5, v1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mLLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mLLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mAppLogos:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;->mLLayout:Landroid/widget/LinearLayout;

    return-object v2
.end method
