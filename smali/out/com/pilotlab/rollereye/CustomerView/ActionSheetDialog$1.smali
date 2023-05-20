.class Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$1;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->builder()Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 58
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->access$000(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
