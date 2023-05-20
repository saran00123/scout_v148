.class public final Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;
.super Ljava/lang/Object;
.source "AggregateInteractiveListener.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/interactive/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
        "TS;TU;TV;>;S:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
        "TS;TU;TV;>;"
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private requestType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->requestType:Ljava/lang/String;

    if-nez p2, :cond_b

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    :cond_b
    iput-object p2, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    .line 27
    iget-object p2, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 28
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->getRequestType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_13

    .line 29
    :cond_2a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AggregateInteractiveListener created for request type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" but received listener with request type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->getRequestType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_52
    return-void
.end method


# virtual methods
.method public getRequestType()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->requestType:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 45
    invoke-interface {v1, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->onCancel(Ljava/lang/Object;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onError(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 52
    invoke-interface {v1, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->onError(Ljava/lang/Object;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onRequestCancel(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;)V
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 78
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->onRequestCancel(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onRequestCompletion(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Landroid/net/Uri;)V
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 64
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->onRequestCompletion(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Landroid/net/Uri;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onRequestError(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Ljava/lang/Exception;)V
    .registers 6

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 71
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->onRequestError(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 38
    invoke-interface {v1, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_6

    :cond_16
    return-void
.end method
