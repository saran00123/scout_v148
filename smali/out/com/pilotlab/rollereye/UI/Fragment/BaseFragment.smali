.class public Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field public customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field public loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "BaseFragment"

    .line 15
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 39
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_7

    .line 40
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 42
    :cond_7
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003b

    .line 44
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 45
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    if-eqz p2, :cond_28

    if-eqz p3, :cond_28

    .line 47
    invoke-virtual {v0, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    :cond_28
    if-eqz p4, :cond_2f

    if-eqz p5, :cond_2f

    .line 49
    invoke-virtual {v0, p4, p5}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 51
    :cond_2f
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 54
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method public myDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .registers 9

    .line 21
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12011c

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11003b

    .line 23
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 24
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p2, :cond_24

    if-eqz p3, :cond_24

    .line 26
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_24
    if-eqz p4, :cond_2b

    if-eqz p5, :cond_2b

    .line 28
    invoke-virtual {v0, p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 30
    :cond_2b
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 31
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 33
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 60
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 61
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 62
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_11

    .line 63
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 64
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_18

    .line 65
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_18
    return-void
.end method
