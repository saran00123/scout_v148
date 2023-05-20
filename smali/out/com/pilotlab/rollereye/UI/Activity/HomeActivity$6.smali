.class Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->setUpData(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 187
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u72b6\u6001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getDownload_status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;->accept(Ljava/lang/Long;)V

    return-void
.end method
