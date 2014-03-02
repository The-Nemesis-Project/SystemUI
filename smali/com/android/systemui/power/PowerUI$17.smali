.class Lcom/android/systemui/power/PowerUI$17;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showWaterDamageWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$17;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$17;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mWaterDamageDialog:Landroid/app/Dialog;

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$17;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mWaterDamageTextView:Landroid/widget/TextView;

    .line 1293
    return-void
.end method
