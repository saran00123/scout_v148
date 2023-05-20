.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2$1;
.super Ljava/lang/Object;
.source "GuidePwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;->accept(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 258
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->finish()V

    return-void
.end method
