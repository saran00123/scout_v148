.class Lanetwork/channel/entity/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lanet/channel/bytes/ByteArray;

.field final synthetic c:I

.field final synthetic d:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic e:Lanetwork/channel/entity/c;


# direct methods
.method constructor <init>(Lanetwork/channel/entity/c;ILanet/channel/bytes/ByteArray;ILanetwork/channel/aidl/ParcelableNetworkListener;)V
    .registers 6

    .line 76
    iput-object p1, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    iput p2, p0, Lanetwork/channel/entity/e;->a:I

    iput-object p3, p0, Lanetwork/channel/entity/e;->b:Lanet/channel/bytes/ByteArray;

    iput p4, p0, Lanetwork/channel/entity/e;->c:I

    iput-object p5, p0, Lanetwork/channel/entity/e;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 78
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->a(Lanetwork/channel/entity/c;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 79
    new-instance v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    iget v1, p0, Lanetwork/channel/entity/e;->a:I

    iget-object v2, p0, Lanetwork/channel/entity/e;->b:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v2}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v2

    iget v3, p0, Lanetwork/channel/entity/e;->c:I

    iget-object v4, p0, Lanetwork/channel/entity/e;->b:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v4}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lanetwork/channel/aidl/DefaultProgressEvent;-><init>(III[B)V

    .line 81
    :try_start_1d
    iget-object v1, p0, Lanetwork/channel/entity/e;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v1, v0}, Lanetwork/channel/aidl/ParcelableNetworkListener;->onDataReceived(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_7a

    goto :goto_7a

    .line 86
    :cond_23
    :try_start_23
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 87
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    new-instance v1, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    invoke-direct {v1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;-><init>()V

    invoke-static {v0, v1}, Lanetwork/channel/entity/c;->a(Lanetwork/channel/entity/c;Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    .line 88
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v1}, Lanetwork/channel/entity/c;->c(Lanetwork/channel/entity/c;)Lanetwork/channel/entity/g;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/entity/e;->c:I

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->init(Lanetwork/channel/entity/g;I)V

    .line 89
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/e;->b:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->write(Lanet/channel/bytes/ByteArray;)V

    .line 90
    iget-object v0, p0, Lanetwork/channel/entity/e;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget-object v1, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v1}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->onInputStreamGet(Lanetwork/channel/aidl/ParcelableInputStream;)V

    goto :goto_7a

    .line 92
    :cond_5d
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/e;->b:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->write(Lanet/channel/bytes/ByteArray;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_68} :catch_69

    goto :goto_7a

    .line 95
    :catch_69
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 96
    :try_start_71
    iget-object v0, p0, Lanetwork/channel/entity/e;->e:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->close()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_7a} :catch_7a

    :catch_7a
    :cond_7a
    :goto_7a
    return-void
.end method
