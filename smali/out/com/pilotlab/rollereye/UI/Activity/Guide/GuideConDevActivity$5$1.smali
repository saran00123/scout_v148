.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5$1;
.super Ljava/lang/Object;
.source "GuideConDevActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->accept(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 419
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 420
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->finish()V

    return-void
.end method
