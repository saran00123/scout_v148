.class public Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;
.super Landroid/app/Dialog;
.source "LoadingProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f120124

    .line 15
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0d0071

    .line 16
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const v0, 0x7f120124

    .line 21
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0d0071

    .line 22
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0a0458

    .line 29
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0a045a

    .line 34
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 40
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->fullScreen()V

    .line 41
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 43
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
