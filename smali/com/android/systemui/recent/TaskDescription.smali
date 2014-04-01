.class public final Lcom/android/systemui/recent/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# instance fields
.field final description:Ljava/lang/CharSequence;

.field final intent:Landroid/content/Intent;

.field private mDominantColor:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLoaded:Z

.field private mThumbnail:Landroid/graphics/drawable/Drawable;

.field final packageName:Ljava/lang/String;

.field final persistentTaskId:I

.field final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final taskId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 57
    iput v1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    .line 58
    iput v1, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    .line 60
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    .line 63
    const v0, -0xffaa67

    iput v0, p0, Lcom/android/systemui/recent/TaskDescription;->mDominantColor:I

    .line 64
    return-void
.end method

.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "_taskId"
    .parameter "_persistentTaskId"
    .parameter "_resolveInfo"
    .parameter "_intent"
    .parameter "_packageName"
    .parameter "_description"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p3, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 45
    iput p1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    .line 46
    iput p2, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    .line 48
    iput-object p6, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 49
    iput-object p5, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    .line 51
    const v0, -0xffaa67

    iput v0, p0, Lcom/android/systemui/recent/TaskDescription;->mDominantColor:I

    .line 52
    return-void
.end method


# virtual methods
.method public getDominantColor()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/systemui/recent/TaskDescription;->mDominantColor:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLoaded:Z

    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDominantColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/systemui/recent/TaskDescription;->mDominantColor:I

    .line 110
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    .line 85
    return-void
.end method

.method public setLoaded(Z)V
    .locals 0
    .parameter "loaded"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLoaded:Z

    .line 68
    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumbnail"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method
