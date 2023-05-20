.class public Lcom/xuhao/didi/socket/common/interfaces/default_protocol/DefaultNormalReaderProtocol;
.super Ljava/lang/Object;
.source "DefaultNormalReaderProtocol.java"

# interfaces
.implements Lcom/xuhao/didi/core/protocol/IReaderProtocol;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBodyLength([BLjava/nio/ByteOrder;)I
    .registers 5

    if-eqz p1, :cond_16

    .line 19
    array-length v0, p1

    invoke-virtual {p0}, Lcom/xuhao/didi/socket/common/interfaces/default_protocol/DefaultNormalReaderProtocol;->getHeaderLength()I

    move-result v1

    if-ge v0, v1, :cond_a

    goto :goto_16

    .line 22
    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method public getHeaderLength()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
