.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$4;
.super Ljava/lang/Object;
.source "GuidePwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->showChoise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 291
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 292
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 293
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 294
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->finish()V

    return-void
.end method
