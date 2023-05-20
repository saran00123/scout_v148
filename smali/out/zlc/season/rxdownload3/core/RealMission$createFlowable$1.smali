.class final Lzlc/season/rxdownload3/core/RealMission$createFlowable$1;
.super Ljava/lang/Object;
.source "RealMission.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RealMission;->createFlowable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lorg/reactivestreams/Subscription;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lorg/reactivestreams/Subscription;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/core/RealMission;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Lorg/reactivestreams/Subscription;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RealMission$createFlowable$1;->accept(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public final accept(Lorg/reactivestreams/Subscription;)V
    .registers 4
    .param p1    # Lorg/reactivestreams/Subscription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    new-instance v0, Lzlc/season/rxdownload3/core/Waiting;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v1

    invoke-direct {v0, v1}, Lzlc/season/rxdownload3/core/Waiting;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v0, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {p1, v0}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    .line 146
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzlc/season/rxdownload3/core/RealMission;->access$setSemaphoreFlag$p(Lzlc/season/rxdownload3/core/RealMission;Z)V

    .line 147
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {p1}, Lzlc/season/rxdownload3/core/RealMission;->access$getSemaphore$p(Lzlc/season/rxdownload3/core/RealMission;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 148
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzlc/season/rxdownload3/core/RealMission;->access$setSemaphoreFlag$p(Lzlc/season/rxdownload3/core/RealMission;Z)V

    return-void
.end method
