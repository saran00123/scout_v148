.class Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;
.super Ljava/lang/Object;
.source "TestVisualizerActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initControlCommand(I)V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;I)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->val$type:I

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
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "along:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 104
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V

    goto :goto_55

    :cond_29
    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V

    goto :goto_55

    :cond_32
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 109
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V

    goto :goto_55

    :cond_3b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_44

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V

    goto :goto_55

    :cond_44
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4d

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V

    goto :goto_55

    :cond_4d
    const/4 v1, 0x6

    if-ne v0, v1, :cond_55

    .line 115
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 92
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
