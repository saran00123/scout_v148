.class public Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;
.super Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;
.source "ActionHandler.java"


# instance fields
.field private iOThreadIsCalledDisconnect:Z

.field private mCurrentThreadMode:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

.field private mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->iOThreadIsCalledDisconnect:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;",
            "Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister<",
            "Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;",
            "Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    .line 29
    invoke-interface {p2, p0}, Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister;->registerReceiver(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public detach(Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister;)V
    .registers 2

    .line 33
    invoke-interface {p1, p0}, Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister;->unRegisterReceiver(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSocketConnectionFailed(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 60
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1, p3}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->disconnect(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSocketIOThreadShutdown(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 46
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mCurrentThreadMode:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getOption()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->getIOThreadMode()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    move-result-object v0

    if-eq p1, v0, :cond_f

    goto :goto_1f

    .line 49
    :cond_f
    iget-boolean p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->iOThreadIsCalledDisconnect:Z

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->iOThreadIsCalledDisconnect:Z

    .line 51
    instance-of p1, p2, Lcom/xuhao/didi/socket/client/impl/exceptions/ManuallyDisconnectException;

    if-nez p1, :cond_1f

    .line 52
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1, p2}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->disconnect(Ljava/lang/Exception;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onSocketIOThreadStart(Ljava/lang/String;)V
    .registers 3

    .line 38
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getOption()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->getIOThreadMode()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    move-result-object p1

    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mCurrentThreadMode:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    if-eq p1, v0, :cond_1a

    .line 39
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getOption()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->getIOThreadMode()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    move-result-object p1

    iput-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->mCurrentThreadMode:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    :cond_1a
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->iOThreadIsCalledDisconnect:Z

    return-void
.end method
