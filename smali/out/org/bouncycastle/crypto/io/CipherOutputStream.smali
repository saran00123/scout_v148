.class public Lorg/bouncycastle/crypto/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B

.field private bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private final oneByte:[B

.field private streamCipher:Lorg/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/StreamCipher;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    return-void
.end method

.method private ensureCapacity(IZ)V
    .registers 3

    if-eqz p2, :cond_14

    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p1

    goto :goto_25

    :cond_b
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz p2, :cond_25

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result p1

    goto :goto_25

    :cond_14
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz p2, :cond_1d

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    goto :goto_25

    :cond_1d
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz p2, :cond_25

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    :cond_25
    :goto_25
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    if-eqz p2, :cond_2c

    array-length p2, p2

    if-ge p2, p1, :cond_30

    :cond_2c
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    :cond_30
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->ensureCapacity(IZ)V

    :try_start_5
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3a

    :cond_1b
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3a

    :cond_31
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/StreamCipher;->reset()V
    :try_end_3a
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_5 .. :try_end_3a} :catch_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3d

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_4e

    :catch_3d
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/CipherIOException;

    const-string v2, "Error closing stream: "

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e

    :catch_46
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher data"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4e
    :try_start_4e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->flush()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v0

    if-nez v1, :cond_5b

    goto :goto_5c

    :cond_5b
    :goto_5b
    move-object v0, v1

    :goto_5c
    if-nez v0, :cond_5f

    return-void

    :cond_5f
    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v2, :cond_16

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/StreamCipher;->returnByte(B)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1a

    :cond_16
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->write([BII)V

    :goto_1a
    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->ensureCapacity(IZ)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_1c

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    if-eqz p1, :cond_46

    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object p3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {p2, p3, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_46

    :cond_1c
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_34

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result p1

    if-eqz p1, :cond_46

    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object p3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {p2, p3, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_46

    :cond_34
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_46
    :goto_46
    return-void
.end method
