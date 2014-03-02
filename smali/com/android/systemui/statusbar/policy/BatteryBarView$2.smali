.class Lcom/android/systemui/statusbar/policy/BatteryBarView$2;
.super Ljava/lang/Object;
.source "BatteryBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarView;->fadeBarColor(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarView;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView$2;->val$view:Landroid/view/View;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarView$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    return-void
.end method
