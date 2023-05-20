.class public Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public fullScreen()V
    .registers 3

    .line 465
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 466
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 473
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xb06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 478
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 479
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->fullScreen()V

    return-void
.end method

.method public show()V
    .registers 3

    .line 484
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 485
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 486
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
