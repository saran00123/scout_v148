.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$2;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 334
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 335
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 336
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 338
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    return-void
.end method
