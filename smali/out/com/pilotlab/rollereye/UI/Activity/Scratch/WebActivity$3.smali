.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$3;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 365
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 366
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 367
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
