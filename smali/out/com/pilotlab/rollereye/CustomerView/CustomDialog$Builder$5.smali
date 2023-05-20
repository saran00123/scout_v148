.class Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$5;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

.field final synthetic val$dialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V
    .registers 3

    .line 316
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$5;->this$0:Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$5;->val$dialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 318
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$5;->this$0:Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->access$000(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$5;->val$dialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
