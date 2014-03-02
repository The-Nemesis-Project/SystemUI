.class Lcom/android/systemui/statusbar/policy/SignalText$2;
.super Landroid/telephony/PhoneStateListener;
.source "SignalText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SignalText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SignalText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SignalText;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signal"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    #setter for: Lcom/android/systemui/statusbar/policy/SignalText;->signal:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/SignalText;->access$102(Lcom/android/systemui/statusbar/policy/SignalText;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    #getter for: Lcom/android/systemui/statusbar/policy/SignalText;->signal:Landroid/telephony/SignalStrength;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SignalText;->access$100(Lcom/android/systemui/statusbar/policy/SignalText;)Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    #getter for: Lcom/android/systemui/statusbar/policy/SignalText;->signal:Landroid/telephony/SignalStrength;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SignalText;->access$100(Lcom/android/systemui/statusbar/policy/SignalText;)Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalText;->ASU:I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalText;->ASU:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalText;->dBm:I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSignalColor()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalText$2;->this$0:Lcom/android/systemui/statusbar/policy/SignalText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalText;->updateSignalText()V

    .line 186
    return-void
.end method
