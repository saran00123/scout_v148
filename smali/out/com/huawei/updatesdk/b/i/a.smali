.class public Lcom/huawei/updatesdk/b/i/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/b/i/a$d;,
        Lcom/huawei/updatesdk/b/i/a$c;
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/updatesdk/b/i/b;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/app/AlertDialog;

.field private f:Landroid/app/AlertDialog$Builder;

.field private g:Landroid/content/DialogInterface$OnShowListener;

.field private h:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/updatesdk/b/i/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/updatesdk/b/i/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/updatesdk/b/i/a;->d:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/huawei/updatesdk/a/a/d/h/c;->i()Z

    move-result p2

    if-eqz p2, :cond_17

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_14
    iput-object p2, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    goto :goto_3f

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 p3, 0x20

    if-ne p2, p3, :cond_36

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_36

    new-instance p2, Landroid/app/AlertDialog$Builder;

    const p3, 0x10302d1

    invoke-direct {p2, p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_14

    :cond_36
    new-instance p2, Landroid/app/AlertDialog$Builder;

    const p3, 0x10302d2

    invoke-direct {p2, p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_14

    :goto_3f
    iget-object p2, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/huawei/updatesdk/b/i/a;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    const-string p3, "upsdk_third_app_dl_sure_cancel_download"

    invoke-static {p1, p3}, Lcom/huawei/updatesdk/b/h/c;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    const-string p3, "upsdk_cancel"

    invoke-static {p1, p3}, Lcom/huawei/updatesdk/b/h/c;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/huawei/updatesdk/b/i/a;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/huawei/updatesdk/b/i/a;
    .registers 4

    new-instance v0, Lcom/huawei/updatesdk/b/i/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/updatesdk/b/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic a(Lcom/huawei/updatesdk/b/i/a;)Lcom/huawei/updatesdk/b/i/b;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/b/i/a;->a:Lcom/huawei/updatesdk/b/i/b;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/updatesdk/b/i/a;)Landroid/content/DialogInterface$OnShowListener;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/b/i/a;->g:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic c(Lcom/huawei/updatesdk/b/i/a;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/b/i/a;->h:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    const-string v0, "BaseAlertDialog"

    const-string v1, "dialog dismiss IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/i/a;->h:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_7
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/i/a;->g:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/huawei/updatesdk/b/h/a;->d()Lcom/huawei/updatesdk/b/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/b/h/a;->a()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "divider"

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/b/h/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_27
    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_32
    return-void
.end method

.method public a(Lcom/huawei/updatesdk/b/i/a$c;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v1, Lcom/huawei/updatesdk/b/i/a$c;->a:Lcom/huawei/updatesdk/b/i/a$c;

    if-ne p1, v1, :cond_f

    const/4 p1, -0x1

    :goto_a
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    goto :goto_16

    :cond_f
    sget-object v1, Lcom/huawei/updatesdk/b/i/a$c;->b:Lcom/huawei/updatesdk/b/i/a$c;

    if-ne p1, v1, :cond_15

    const/4 p1, -0x2

    goto :goto_a

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-nez p1, :cond_19

    return-void

    :cond_19
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setAllCaps(Z)V

    return-void
.end method

.method public a(Lcom/huawei/updatesdk/b/i/a$d;)V
    .registers 5

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->b:Landroid/content/Context;

    const-string v1, "BaseAlertDialog"

    if-eqz v0, :cond_90

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_90

    :cond_10
    invoke-virtual {p0}, Lcom/huawei/updatesdk/b/i/a;->b()Z

    move-result v0

    if-nez v0, :cond_60

    :try_start_16
    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    new-instance v2, Lcom/huawei/updatesdk/b/i/a$a;

    invoke-direct {v2, p0}, Lcom/huawei/updatesdk/b/i/a$a;-><init>(Lcom/huawei/updatesdk/b/i/a;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    new-instance v2, Lcom/huawei/updatesdk/b/i/a$b;

    invoke-direct {v2, p0}, Lcom/huawei/updatesdk/b/i/a$b;-><init>(Lcom/huawei/updatesdk/b/i/a;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_47} :catch_48

    goto :goto_8f

    :catch_48
    move-exception v0

    if-eqz p1, :cond_4e

    invoke-interface {p1}, Lcom/huawei/updatesdk/b/i/a$d;->a()V

    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show dlg error, e: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show dlg error, mContext = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mContext.isFinishing is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->b:Landroid/content/Context;

    if-nez v0, :cond_7b

    const-string v0, "mContext == null"

    goto :goto_85

    :cond_7b
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8f
    return-void

    :cond_90
    :goto_90
    const-string v0, "context == null or activity isFinishing"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9a

    invoke-interface {p1}, Lcom/huawei/updatesdk/b/i/a$d;->a()V

    :cond_9a
    return-void
.end method

.method public a(Lcom/huawei/updatesdk/b/i/b;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/i/a;->a:Lcom/huawei/updatesdk/b/i/b;

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_7
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a;->f:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
