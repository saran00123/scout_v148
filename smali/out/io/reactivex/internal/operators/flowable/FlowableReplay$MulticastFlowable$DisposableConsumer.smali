.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DisposableConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field private final srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;)V"
        }
    .end annotation

    .line 1130
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;->srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 1136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;->srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1127
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
