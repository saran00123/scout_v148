.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$3;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->initFailDialog(Ljava/lang/String;)V
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

    .line 339
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 342
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 343
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->setResult(ILandroid/content/Intent;)V

    .line 344
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->finish()V

    return-void
.end method
