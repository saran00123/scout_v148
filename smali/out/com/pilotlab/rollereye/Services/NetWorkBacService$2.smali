.class Lcom/pilotlab/rollereye/Services/NetWorkBacService$2;
.super Ljava/lang/Object;
.source "NetWorkBacService.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


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
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$2;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 395
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v2

    .line 397
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 399
    :goto_a
    iget-object v2, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$2;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v2}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    :try_start_16
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1e
    const-string v0, ""

    .line 405
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 406
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
