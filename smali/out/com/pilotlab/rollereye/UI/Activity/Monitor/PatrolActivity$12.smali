.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$12;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 2

    .line 696
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 699
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 700
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 701
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 702
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
