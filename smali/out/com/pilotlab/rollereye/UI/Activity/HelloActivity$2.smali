.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initPermission()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

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

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 194
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    .line 195
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    goto :goto_34

    .line 197
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const p1, 0x7f1102ae

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const v2, 0x7f11003e

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v0 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_34
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
