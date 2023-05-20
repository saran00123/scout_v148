.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initAudioPermission()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 2

    .line 1338
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1341
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1342
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$5300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_3b

    .line 1345
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$5300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 1347
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const p1, 0x7f110224

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1352
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_3b
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
