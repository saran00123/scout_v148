.class public Lcom/danikula/videocache/ByteArraySource;
.super Ljava/lang/Object;
.source "ByteArraySource.java"

# interfaces
.implements Lcom/danikula/videocache/Source;


# instance fields
.field private arrayInputStream:Ljava/io/ByteArrayInputStream;

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/danikula/videocache/ByteArraySource;->data:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    return-void
.end method

.method public length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/danikula/videocache/ByteArraySource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public open(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/danikula/videocache/ByteArraySource;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/danikula/videocache/ByteArraySource;->arrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 32
    iget-object v0, p0, Lcom/danikula/videocache/ByteArraySource;->arrayInputStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-void
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/danikula/videocache/ByteArraySource;->arrayInputStream:Ljava/io/ByteArrayInputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1
.end method
