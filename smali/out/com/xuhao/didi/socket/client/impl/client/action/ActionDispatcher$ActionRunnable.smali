.class public Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionRunnable"
.end annotation


# instance fields
.field private mActionBean:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;


# direct methods
.method constructor <init>(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;)V
    .registers 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;->mActionBean:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 309
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;->mActionBean:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    if-eqz v0, :cond_3b

    iget-object v0, v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->mDispatcher:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;

    if-eqz v0, :cond_3b

    .line 310
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;->mActionBean:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    iget-object v0, v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->mDispatcher:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;

    .line 311
    invoke-static {v0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->access$100(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 312
    :try_start_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->access$100(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 313
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 314
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 315
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;

    .line 316
    iget-object v4, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;->mActionBean:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    iget-object v4, v4, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->mAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;->mActionBean:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    iget-object v5, v5, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->arg:Ljava/io/Serializable;

    invoke-static {v0, v4, v5, v3}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->access$200(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)V

    goto :goto_1e

    .line 318
    :cond_36
    monitor-exit v1

    goto :goto_3b

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :goto_3b
    return-void
.end method
