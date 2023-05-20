.class Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$2;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;Landroid/content/Context;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 75
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    sget-object v0, Lcom/pilotlab/rollereye/Common/ServerConstent;->questionNaireURL_amazon:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$2;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 80
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->access$000(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2a
    return-void
.end method
