.class public abstract Lcom/huawei/hms/ui/AbstractDialog;
.super Ljava/lang/Object;
.source "AbstractDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ui/AbstractDialog$Callback;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/app/AlertDialog;

.field public c:Lcom/huawei/hms/ui/AbstractDialog$Callback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "androidhwext:style/Theme.Emui"

    invoke-virtual {p0, v1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_7
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public fireCancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->c:Lcom/huawei/hms/ui/AbstractDialog$Callback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p0}, Lcom/huawei/hms/ui/AbstractDialog$Callback;->onCancel(Lcom/huawei/hms/ui/AbstractDialog;)V

    :cond_7
    return-void
.end method

.method public fireDoWork()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->c:Lcom/huawei/hms/ui/AbstractDialog$Callback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p0}, Lcom/huawei/hms/ui/AbstractDialog$Callback;->onDoWork(Lcom/huawei/hms/ui/AbstractDialog;)V

    :cond_7
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getDialogThemeId()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/ui/AbstractDialog;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method public onCreateDialog(Landroid/app/Activity;)Landroid/app/AlertDialog;
    .registers 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/huawei/hms/ui/AbstractDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/hms/ui/AbstractDialog;->getDialogThemeId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hms/ui/AbstractDialog;->onGetTitleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8
    :cond_16
    invoke-virtual {p0, p1}, Lcom/huawei/hms/ui/AbstractDialog;->onGetMessageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/huawei/hms/ui/AbstractDialog;->onGetPositiveButtonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 15
    new-instance v2, Lcom/huawei/hms/ui/AbstractDialog$a;

    invoke-direct {v2, p0}, Lcom/huawei/hms/ui/AbstractDialog$a;-><init>(Lcom/huawei/hms/ui/AbstractDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 23
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/huawei/hms/ui/AbstractDialog;->onGetNegativeButtonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 25
    new-instance v1, Lcom/huawei/hms/ui/AbstractDialog$b;

    invoke-direct {v1, p0}, Lcom/huawei/hms/ui/AbstractDialog$b;-><init>(Lcom/huawei/hms/ui/AbstractDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    :cond_3b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public abstract onGetMessageString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract onGetNegativeButtonString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract onGetPositiveButtonString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract onGetTitleString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/huawei/hms/ui/AbstractDialog$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->a:Landroid/app/Activity;

    .line 2
    iput-object p2, p0, Lcom/huawei/hms/ui/AbstractDialog;->c:Lcom/huawei/hms/ui/AbstractDialog$Callback;

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->a:Landroid/app/Activity;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_37

    .line 9
    :cond_f
    iget-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/ui/AbstractDialog;->onCreateDialog(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    .line 11
    iget-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 13
    iget-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    new-instance p2, Lcom/huawei/hms/ui/AbstractDialog$c;

    invoke-direct {p2, p0}, Lcom/huawei/hms/ui/AbstractDialog$c;-><init>(Lcom/huawei/hms/ui/AbstractDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 20
    iget-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    new-instance p2, Lcom/huawei/hms/ui/AbstractDialog$d;

    invoke-direct {p2, p0}, Lcom/huawei/hms/ui/AbstractDialog$d;-><init>(Lcom/huawei/hms/ui/AbstractDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 33
    iget-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_37
    :goto_37
    const-string p1, "AbstractDialog"

    const-string p2, "In show, The activity is null or finishing."

    .line 34
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
