.class public Lcom/xuhao/didi/socket/client/sdk/client/connection/NoneReconnect;
.super Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;
.source "NoneReconnect.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;-><init>()V

    return-void
.end method


# virtual methods
.method public onSocketConnectionFailed(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public onSocketConnectionSuccess(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSocketDisconnection(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method
