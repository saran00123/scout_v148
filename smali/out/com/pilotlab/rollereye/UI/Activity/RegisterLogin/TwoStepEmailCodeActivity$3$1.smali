.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3$1;
.super Ljava/lang/Object;
.source "TwoStepEmailCodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 245
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 247
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 249
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->finish()V

    return-void
.end method
