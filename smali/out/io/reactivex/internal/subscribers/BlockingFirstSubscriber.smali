.class public final Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;
.super Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;
.source "BlockingFirstSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BlockingBaseSubscriber<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->error:Ljava/lang/Throwable;

    goto :goto_a

    .line 39
    :cond_7
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 41
    :goto_a
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->countDown()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->value:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->value:Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 30
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingFirstSubscriber;->countDown()V

    :cond_e
    return-void
.end method
