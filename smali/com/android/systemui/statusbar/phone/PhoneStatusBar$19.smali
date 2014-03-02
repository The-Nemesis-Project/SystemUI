.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$stub:Landroid/view/ViewStub;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewStub;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2789
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->val$stub:Landroid/view/ViewStub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2792
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->val$stub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 2794
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2799
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2805
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2806
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2807
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2809
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClingShown:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2810
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2811
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "shown_quick_settings_help"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2812
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2814
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 2815
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 2817
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSuppressStatusBarDrags:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2818
    return-void
.end method
