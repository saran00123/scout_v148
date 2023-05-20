.class public Lorg/bouncycastle/crypto/io/CipherInputStream;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final INPUT_BUF_SIZE:I = 0x800


# instance fields
.field private aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B

.field private bufOff:I

.field private bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private finalized:Z

.field private inBuf:[B

.field private markBuf:[B

.field private markBufOff:I

.field private markPosition:J

.field private maxBuf:I

.field private skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

.field private streamCipher:Lorg/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .registers 4

    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-array p1, p3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    instance-of p1, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz p1, :cond_10

    check-cast p2, Lorg/bouncycastle/crypto/SkippingCipher;

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;)V
    .registers 4

    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    new-array p1, p3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    instance-of p1, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz p1, :cond_10

    check-cast p2, Lorg/bouncycastle/crypto/SkippingCipher;

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .registers 4

    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    new-array p1, p3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    instance-of p1, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz p1, :cond_10

    check-cast p2, Lorg/bouncycastle/crypto/SkippingCipher;

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    return-void
.end method

.method private ensureCapacity(IZ)V
    .registers 3

    if-eqz p2, :cond_14

    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p1

    goto :goto_25

    :cond_b
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz p2, :cond_25

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result p1

    goto :goto_25

    :cond_14
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz p2, :cond_1d

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    goto :goto_25

    :cond_1d
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz p2, :cond_25

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    :cond_25
    :goto_25
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz p2, :cond_2c

    array-length p2, p2

    if-ge p2, p1, :cond_30

    :cond_2c
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    :cond_30
    return-void
.end method

.method private finaliseCipher()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->ensureCapacity(IZ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    :goto_13
    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_25

    :cond_16
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0

    goto :goto_13

    :cond_23
    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_25
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_25} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error finalising cipher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3e
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private nextChunk()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    :goto_b
    iget v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v2, :cond_61

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v1, :cond_22

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v0, :cond_21

    return v1

    :cond_21
    return v0

    :cond_22
    :try_start_22
    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->ensureCapacity(IZ)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v3, :cond_39

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v6, 0x0

    iget-object v8, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v9, 0x0

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v2

    :goto_36
    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_b

    :cond_39
    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v3, :cond_4b

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v6, 0x0

    iget-object v8, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v9, 0x0

    move v7, v2

    invoke-interface/range {v4 .. v9}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v2

    goto :goto_36

    :cond_4b
    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v6, 0x0

    iget-object v8, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v9, 0x0

    move v7, v2

    invoke-interface/range {v4 .. v9}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_57} :catch_58

    goto :goto_36

    :catch_58
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/CipherIOException;

    const-string v2, "Error processing stream "

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_61
    return v2
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_30

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    :cond_21
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v1, :cond_2a

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    :cond_2a
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void

    :catchall_30
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v1, :cond_38

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    :cond_38
    throw v0
.end method

.method public mark(I)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lorg/bouncycastle/crypto/SkippingCipher;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    :cond_f
    iget-object p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz p1, :cond_1f

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    iget p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_e

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_e

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    return p3
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    iget-wide v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/SkippingCipher;->seekTo(J)J

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    if-eqz v0, :cond_16

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    :cond_16
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    return-void

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cipher must implement SkippingCipher to be used with reset()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1c

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    return-wide p1

    :cond_1c
    iget v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    invoke-interface {v2, p1, p2}, Lorg/bouncycastle/crypto/SkippingCipher;->skip(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_33

    add-long/2addr p1, v0

    return-wide p1

    :cond_33
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to skip cipher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    int-to-long p1, p1

    return-wide p1
.end method
