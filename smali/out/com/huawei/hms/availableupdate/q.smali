.class public abstract Lcom/huawei/hms/availableupdate/q;
.super Ljava/lang/Object;
.source "AbstractDialog.java"


# instance fields
.field public a:Landroid/app/AlertDialog;

.field public b:Lcom/huawei/hms/availableupdate/p;


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
.method public a()V
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_7
    return-void
.end method

.method public a(Lcom/huawei/hms/availableupdate/p;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_2f

    .line 9
    :cond_13
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->g()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    .line 11
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 13
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    new-instance v0, Lcom/huawei/hms/availableupdate/q$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/availableupdate/q$a;-><init>(Lcom/huawei/hms/availableupdate/q;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 20
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2f
    :goto_2f
    const-string p1, "AbstractDialog"

    const-string v0, "In show, The activity is null or finishing."

    .line 21
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p0}, Lcom/huawei/hms/availableupdate/p;->a(Lcom/huawei/hms/availableupdate/q;)V

    :cond_7
    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p0}, Lcom/huawei/hms/availableupdate/p;->b(Lcom/huawei/hms/availableupdate/q;)V

    :cond_7
    return-void
.end method

.method public e()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/availableupdate/q;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public abstract g()Landroid/app/AlertDialog;
.end method
