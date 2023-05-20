.class Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;
.super Ljava/lang/Object;
.source "BasicDownloadActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lzlc/season/rxdownload3/core/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;

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

    .line 115
    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;->accept(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method

.method public accept(Lzlc/season/rxdownload3/core/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;Lzlc/season/rxdownload3/core/Status;)Lzlc/season/rxdownload3/core/Status;

    .line 119
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;Lzlc/season/rxdownload3/core/Status;)V

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method
