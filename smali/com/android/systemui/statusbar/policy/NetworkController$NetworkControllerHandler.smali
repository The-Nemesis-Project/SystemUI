.class Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x46

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1184
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1302(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1188
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH -mPreSvcSate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSvcSate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, -0x1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_0

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, -0x1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1209
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v0, :cond_3

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f020250

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f020250

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1220
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_0

    .line 1213
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkController;I)[I

    move-result-object v1

    aget v1, v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I
    invoke-static {v1, v3, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController;II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1233
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(NO_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1238
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1277
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1808(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    .line 1282
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-le v0, v7, :cond_10

    .line 1283
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1287
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2400(Lcom/android/systemui/statusbar/policy/NetworkController;I)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1242
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 1245
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(AIRPLANE) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1250
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_2

    .line 1254
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1255
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-le v0, v7, :cond_d

    .line 1257
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level over - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1263
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 1264
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(IN_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2400(Lcom/android/systemui/statusbar/policy/NetworkController;I)V

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_0

    .line 1259
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-gez v0, :cond_c

    .line 1260
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level under - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto/16 :goto_5

    .line 1273
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_2

    .line 1279
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-le v0, v1, :cond_7

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1810(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    goto/16 :goto_3

    .line 1284
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-gez v0, :cond_8

    .line 1285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto/16 :goto_4

    .line 1293
    :pswitch_1
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "CHANGE_FAKE_CALL_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1182
    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
