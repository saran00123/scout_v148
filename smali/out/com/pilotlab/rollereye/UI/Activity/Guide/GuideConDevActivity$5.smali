.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;
.super Ljava/lang/Object;
.source "GuideConDevActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->initPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V
    .registers 2

    .line 401
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 404
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 405
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_12

    .line 406
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    goto :goto_49

    .line 408
    :cond_12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 409
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    .line 411
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->finish()V

    goto :goto_49

    .line 414
    :cond_29
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    const p1, 0x7f110264

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    const v2, 0x7f11003e

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_49
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
