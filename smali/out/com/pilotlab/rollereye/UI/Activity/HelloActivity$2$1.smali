.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2$1;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->accept(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    .line 202
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 203
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    return-void
.end method
