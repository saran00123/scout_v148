.class Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$1;
.super Ljava/lang/Object;
.source "FiveStarCommentWebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 68
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->dismiss()V

    return-void
.end method
