.class Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;
.super Ljava/lang/Object;
.source "NetWorkBacService.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/Services/NetWorkBacService;->sendSocketCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 411
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 414
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->P2P_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method
