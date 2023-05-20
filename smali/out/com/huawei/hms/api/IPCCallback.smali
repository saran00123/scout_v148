.class public Lcom/huawei/hms/api/IPCCallback;
.super Lcom/huawei/hms/core/aidl/c$a;
.source "IPCCallback.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/core/aidl/IMessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/huawei/hms/support/api/transport/DatagramTransport$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/huawei/hms/support/api/transport/DatagramTransport$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/core/aidl/IMessageEntity;",
            ">;",
            "Lcom/huawei/hms/support/api/transport/DatagramTransport$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/core/aidl/c$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/api/IPCCallback;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/api/IPCCallback;->b:Lcom/huawei/hms/support/api/transport/DatagramTransport$a;

    return-void
.end method


# virtual methods
.method public call(Lcom/huawei/hms/core/aidl/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_45

    .line 1
    iget-object v0, p1, Lcom/huawei/hms/core/aidl/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/core/aidl/b;->c()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/hms/core/aidl/a;->a(I)Lcom/huawei/hms/core/aidl/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/core/aidl/b;->b()I

    move-result v2

    if-lez v2, :cond_26

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/api/IPCCallback;->newResponseInstance()Lcom/huawei/hms/core/aidl/IMessageEntity;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 13
    invoke-virtual {p1}, Lcom/huawei/hms/core/aidl/b;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/core/aidl/e;->a(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    .line 17
    :cond_26
    iget-object v2, p1, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    if-eqz v2, :cond_3e

    .line 18
    new-instance v2, Lcom/huawei/hms/core/aidl/ResponseHeader;

    invoke-direct {v2}, Lcom/huawei/hms/core/aidl/ResponseHeader;-><init>()V

    .line 19
    iget-object p1, p1, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v2}, Lcom/huawei/hms/core/aidl/e;->a(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    .line 20
    iget-object p1, p0, Lcom/huawei/hms/api/IPCCallback;->b:Lcom/huawei/hms/support/api/transport/DatagramTransport$a;

    invoke-virtual {v2}, Lcom/huawei/hms/core/aidl/ResponseHeader;->getStatusCode()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/huawei/hms/support/api/transport/DatagramTransport$a;->a(ILcom/huawei/hms/core/aidl/IMessageEntity;)V

    goto :goto_44

    .line 22
    :cond_3e
    iget-object p1, p0, Lcom/huawei/hms/api/IPCCallback;->b:Lcom/huawei/hms/support/api/transport/DatagramTransport$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/huawei/hms/support/api/transport/DatagramTransport$a;->a(ILcom/huawei/hms/core/aidl/IMessageEntity;)V

    :goto_44
    return-void

    :cond_45
    const-string p1, "IPCCallback"

    const-string v0, "In call, URI cannot be empty."

    .line 23
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method protected newResponseInstance()Lcom/huawei/hms/core/aidl/IMessageEntity;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/IPCCallback;->a:Ljava/lang/Class;

    if-eqz v0, :cond_28

    .line 3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/core/aidl/IMessageEntity;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_a} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    .line 5
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In newResponseInstance, instancing exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPCCallback"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method
