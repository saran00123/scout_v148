.class public Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;
.super Lanetwork/channel/aidl/ParcelableBodyHandler$Stub;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.ParcelableBodyHandlerWrapper"


# instance fields
.field private handler:Lanetwork/channel/IBodyHandler;


# direct methods
.method public constructor <init>(Lanetwork/channel/IBodyHandler;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableBodyHandler$Stub;-><init>()V

    .line 12
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->handler:Lanetwork/channel/IBodyHandler;

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->handler:Lanetwork/channel/IBodyHandler;

    if-eqz v0, :cond_9

    .line 23
    invoke-interface {v0}, Lanetwork/channel/IBodyHandler;->isCompleted()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->handler:Lanetwork/channel/IBodyHandler;

    if-eqz v0, :cond_9

    .line 16
    invoke-interface {v0, p1}, Lanetwork/channel/IBodyHandler;->read([B)I

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->handler:Lanetwork/channel/IBodyHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
