.class public Lcom/android/systemui/cooldown/Overheat;
.super Landroid/app/Activity;
.source "Overheat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OverheatReceiver"

.field private static package_Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 32
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 34
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 15
    .parameter "id"

    .prologue
    .line 39
    const-string v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, mSalesCode:Ljava/lang/String;
    const-string v13, "VZW"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 41
    .local v8, isVZW:Z
    const/4 v13, 0x1

    if-ne v8, v13, :cond_0

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 44
    .local v7, factory:Landroid/view/LayoutInflater;
    const v13, 0x7f040010

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 47
    .local v11, popupEntryView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0198

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, title:Ljava/lang/String;
    const v1, 0x7f0a019d

    .line 50
    .local v1, btnPositiveText:I
    const v13, 0x7f070055

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 52
    .local v3, checkBox:Landroid/widget/CheckBox;
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 53
    const v13, 0x7f070056

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, addMsg:Landroid/widget/TextView;
    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0199

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, description:Ljava/lang/String;
    const v13, 0x7f070054

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 58
    .local v10, msg:Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-direct {v13, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/cooldown/Overheat$1;

    invoke-direct {v14, p0}, Lcom/android/systemui/cooldown/Overheat$1;-><init>(Lcom/android/systemui/cooldown/Overheat;)V

    invoke-virtual {v13, v1, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 71
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .local v5, dlg:Landroid/app/AlertDialog;
    move-object v6, v5

    .line 104
    .end local v5           #dlg:Landroid/app/AlertDialog;
    .local v6, dlg:Landroid/app/AlertDialog;
    :goto_0
    return-object v6

    .line 75
    .end local v0           #addMsg:Landroid/widget/TextView;
    .end local v1           #btnPositiveText:I
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #checkBox:Landroid/widget/CheckBox;
    .end local v4           #description:Ljava/lang/String;
    .end local v6           #dlg:Landroid/app/AlertDialog;
    .end local v7           #factory:Landroid/view/LayoutInflater;
    .end local v10           #msg:Landroid/widget/TextView;
    .end local v11           #popupEntryView:Landroid/view/View;
    .end local v12           #title:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 76
    .restart local v7       #factory:Landroid/view/LayoutInflater;
    const v13, 0x7f040010

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 79
    .restart local v11       #popupEntryView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a018f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 81
    .restart local v12       #title:Ljava/lang/String;
    const v1, 0x7f0a0194

    .line 82
    .restart local v1       #btnPositiveText:I
    const v13, 0x7f070055

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 84
    .restart local v3       #checkBox:Landroid/widget/CheckBox;
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v13, 0x7f070056

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .restart local v0       #addMsg:Landroid/widget/TextView;
    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0190

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .restart local v4       #description:Ljava/lang/String;
    const v13, 0x7f070054

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 90
    .restart local v10       #msg:Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-direct {v13, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/cooldown/Overheat$2;

    invoke-direct {v14, p0}, Lcom/android/systemui/cooldown/Overheat$2;-><init>(Lcom/android/systemui/cooldown/Overheat;)V

    invoke-virtual {v13, v1, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 103
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .restart local v5       #dlg:Landroid/app/AlertDialog;
    move-object v6, v5

    .line 104
    .end local v5           #dlg:Landroid/app/AlertDialog;
    .restart local v6       #dlg:Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 113
    return-void
.end method
