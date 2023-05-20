.class Lcom/pilotlab/rollereye/P2P/P2PDownload$1;
.super Ljava/lang/Object;
.source "P2PDownload.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/P2P/P2PDownload;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PDownload;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 3

    .line 141
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-static {p1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->access$100(Lcom/pilotlab/rollereye/P2P/P2PDownload;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 142
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadError()V

    .line 144
    :cond_e
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->access$102(Lcom/pilotlab/rollereye/P2P/P2PDownload;I)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 133
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->access$002(Lcom/pilotlab/rollereye/P2P/P2PDownload;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
