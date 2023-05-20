.class public Lcom/huawei/hms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ErrorDialogFragment.java"


# instance fields
.field private myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

.field private myDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/huawei/hms/common/ErrorDialogFragment;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/hms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;
    .registers 4

    const-string v0, "Dialog cannot be null!"

    .line 2
    invoke-static {p0, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/huawei/hms/common/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/huawei/hms/common/ErrorDialogFragment;-><init>()V

    .line 5
    iput-object p0, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    .line 6
    iget-object p0, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    iget-object p0, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_1b

    .line 9
    iput-object p1, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

    :cond_1b
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_7
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    .line 4
    :cond_8
    iget-object p1, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    const-string v0, "FragmentManager cannot be null!"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
