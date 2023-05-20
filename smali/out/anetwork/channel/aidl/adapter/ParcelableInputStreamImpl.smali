.class public Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;
.super Lanetwork/channel/aidl/ParcelableInputStream$Stub;
.source "Taobao"


# static fields
.field private static final EOS:Lanet/channel/bytes/ByteArray;

.field private static final TAG:Ljava/lang/String; = "anet.ParcelableInputStreamImpl"


# instance fields
.field private blockIndex:I

.field private blockOffset:I

.field private byteList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lanet/channel/bytes/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private contentLength:I

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final newDataArrive:Ljava/util/concurrent/locks/Condition;

.field private rto:I

.field private seqNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Lanet/channel/bytes/ByteArray;->create(I)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    sput-object v0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->EOS:Lanet/channel/bytes/ByteArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    const/16 v0, 0x2710

    .line 29
    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->rto:I

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->seqNo:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private recycleCurrentItem()V
    .registers 4

    .line 53
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 55
    :try_start_5
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    sget-object v2, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->EOS:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 56
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    .line 58
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    throw v0
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_48

    .line 68
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 70
    :try_start_d
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_41

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    .line 79
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 73
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 74
    :goto_26
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 75
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/bytes/ByteArray;

    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_26

    .line 77
    :cond_38
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_41

    sub-int/2addr v2, v0

    .line 79
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_41
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 80
    throw v0

    .line 65
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 87
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    :try_start_f
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/bytes/ByteArray;

    .line 90
    sget-object v3, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->EOS:Lanet/channel/bytes/ByteArray;

    if-eq v2, v3, :cond_15

    .line 91
    invoke-virtual {v2}, Lanet/channel/bytes/ByteArray;->recycle()V

    goto :goto_15

    .line 94
    :cond_29
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    .line 97
    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    .line 98
    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->contentLength:I
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_3e

    .line 100
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_45

    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    throw v0

    :cond_45
    :goto_45
    return-void
.end method

.method public init(Lanetwork/channel/entity/g;I)V
    .registers 3

    .line 247
    iput p2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->contentLength:I

    .line 248
    iget-object p2, p1, Lanetwork/channel/entity/g;->e:Ljava/lang/String;

    iput-object p2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->seqNo:Ljava/lang/String;

    .line 249
    iget p1, p1, Lanetwork/channel/entity/g;->d:I

    iput p1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->rto:I

    return-void
.end method

.method public length()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->contentLength:I

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->readBytes([BII)I

    move-result p1

    return p1
.end method

.method public readByte()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 111
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 114
    :goto_d
    :try_start_d
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 115
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->rto:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_30

    .line 116
    :cond_25
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->close()V

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "await timeout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_30
    :goto_30
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 121
    sget-object v1, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->EOS:Lanet/channel/bytes/ByteArray;

    if-ne v0, v1, :cond_40

    const/4 v0, -0x1

    goto :goto_56

    .line 126
    :cond_40
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 127
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    aget-byte v0, v0, v1

    .line 128
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_56} :catch_6b
    .catchall {:try_start_d .. :try_end_56} :catchall_69

    .line 140
    :goto_56
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 131
    :cond_5c
    :try_start_5c
    invoke-direct {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->recycleCurrentItem()V

    .line 132
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_68} :catch_6b
    .catchall {:try_start_5c .. :try_end_68} :catchall_69

    goto :goto_d

    :catchall_69
    move-exception v0

    goto :goto_76

    .line 137
    :catch_6b
    :try_start_6b
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->close()V

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "await interrupt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_69

    .line 140
    :goto_76
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 141
    throw v0

    .line 108
    :cond_7c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a8

    if-eqz p1, :cond_a2

    if-ltz p2, :cond_9c

    if-ltz p3, :cond_9c

    add-int/2addr p3, p2

    .line 155
    array-length v0, p1

    if-gt p3, v0, :cond_9c

    .line 162
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v0, p2

    :goto_18
    if-ge v0, p3, :cond_91

    .line 165
    :try_start_1a
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v1, v2, :cond_3d

    .line 166
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->rto:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_3d

    .line 167
    :cond_32
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->close()V

    .line 168
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "await timeout."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/bytes/ByteArray;

    .line 173
    sget-object v2, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->EOS:Lanet/channel/bytes/ByteArray;

    if-ne v1, v2, :cond_4c

    goto :goto_91

    .line 177
    :cond_4c
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v2

    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    sub-int/2addr v2, v3

    sub-int v3, p3, v0

    if-ge v2, v3, :cond_6e

    .line 181
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v1

    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    .line 183
    invoke-direct {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->recycleCurrentItem()V

    .line 184
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    const/4 v1, 0x0

    .line 185
    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    goto :goto_18

    .line 187
    :cond_6e
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v1

    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    add-int/2addr v1, v3

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I
    :try_end_7c
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_7c} :catch_80
    .catchall {:try_start_1a .. :try_end_7c} :catchall_7e

    add-int/2addr v0, v3

    goto :goto_18

    :catchall_7e
    move-exception p1

    goto :goto_8b

    .line 193
    :catch_80
    :try_start_80
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->close()V

    .line 194
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "await interrupt"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_7e

    .line 196
    :goto_8b
    iget-object p2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    throw p1

    .line 196
    :cond_91
    :goto_91
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sub-int/2addr v0, p2

    if-lez v0, :cond_9a

    goto :goto_9b

    :cond_9a
    const/4 v0, -0x1

    :goto_9b
    return v0

    .line 156
    :cond_9c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 152
    :cond_a2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 148
    :cond_a8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(I)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, p1, :cond_4d

    .line 214
    :try_start_9
    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    iget-object v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v2, v3, :cond_14

    goto :goto_4d

    .line 218
    :cond_14
    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/bytes/ByteArray;

    .line 219
    sget-object v3, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->EOS:Lanet/channel/bytes/ByteArray;

    if-ne v2, v3, :cond_23

    goto :goto_4d

    .line 223
    :cond_23
    invoke-virtual {v2}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v2

    .line 224
    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    sub-int v3, v2, v3

    sub-int v4, p1, v1

    if-ge v3, v4, :cond_3f

    .line 225
    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 226
    invoke-direct {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->recycleCurrentItem()V

    .line 227
    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockIndex:I

    .line 228
    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    goto :goto_7

    .line 231
    :cond_3f
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I

    add-int/2addr v1, v4

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->blockOffset:I
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_46

    move v1, p1

    goto :goto_7

    :catchall_46
    move-exception p1

    .line 236
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    throw p1

    .line 236
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    int-to-long v0, v1

    return-wide v0
.end method

.method public write(Lanet/channel/bytes/ByteArray;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 39
    :cond_9
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 41
    :try_start_e
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1e

    .line 44
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1e
    move-exception p1

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    throw p1
.end method

.method public writeEnd()V
    .registers 2

    .line 49
    sget-object v0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->EOS:Lanet/channel/bytes/ByteArray;

    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->write(Lanet/channel/bytes/ByteArray;)V

    return-void
.end method
