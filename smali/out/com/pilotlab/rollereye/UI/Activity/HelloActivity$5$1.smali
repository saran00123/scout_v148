.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5$1;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 407
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 408
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 409
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 410
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 411
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    return-void
.end method
