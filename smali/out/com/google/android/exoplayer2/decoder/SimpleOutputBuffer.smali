.class public Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/OutputBuffer;
.source "SimpleOutputBuffer.java"


# instance fields
.field public data:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final owner:Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->clear()V

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_a
    return-void
.end method

.method public init(JI)Ljava/nio/ByteBuffer;
    .registers 4

    .line 43
    iput-wide p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    .line 44
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-ge p1, p3, :cond_1a

    .line 45
    :cond_c
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 47
    :cond_1a
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 49
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public release()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    return-void
.end method
