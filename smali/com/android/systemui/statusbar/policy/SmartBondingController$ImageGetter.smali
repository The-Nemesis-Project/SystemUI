.class public Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;
.super Ljava/lang/Object;
.source "SmartBondingController.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartBondingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, id:I
    const-string v2, "booster_icon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const v1, 0x7f02013a

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    #getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$000(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 240
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    return-object v0
.end method
