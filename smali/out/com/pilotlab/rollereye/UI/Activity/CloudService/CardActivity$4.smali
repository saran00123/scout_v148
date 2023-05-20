.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->initSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 363
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 364
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 365
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 366
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "choiseOrderID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    :cond_1c
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->setResult(ILandroid/content/Intent;)V

    .line 368
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->finish()V

    return-void
.end method
