.class Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->setSheetItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;I)V
    .registers 4

    .line 192
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;->val$listener:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;

    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 195
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;->val$listener:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;->val$index:I

    invoke-interface {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;->onClick(I)V

    .line 196
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->access$000(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
