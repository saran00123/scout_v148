.class public Lcom/nimbusds/jose/util/DeflateUtils;
.super Ljava/lang/Object;
.source "DeflateUtils.java"


# static fields
.field private static final NOWRAP:Z = true


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 66
    :try_start_6
    new-instance v2, Ljava/util/zip/Deflater;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/util/zip/Deflater;-><init>(IZ)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_26

    .line 67
    :try_start_e
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v0, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_24

    .line 68
    :try_start_13
    invoke-virtual {v3, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_21

    .line 71
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 74
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_21
    move-exception p0

    move-object v1, v3

    goto :goto_28

    :catchall_24
    move-exception p0

    goto :goto_28

    :catchall_26
    move-exception p0

    move-object v2, v1

    :goto_28
    if-eqz v1, :cond_2d

    .line 71
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    :cond_2d
    if-eqz v2, :cond_32

    .line 74
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 76
    :cond_32
    throw p0
.end method

.method public static decompress([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    :try_start_1
    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_35

    .line 99
    :try_start_7
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_33

    .line 101
    :try_start_11
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    .line 104
    new-array v0, v0, [B

    .line 108
    :goto_1a
    invoke-virtual {v2, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_25

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1a

    .line 113
    :cond_25
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 116
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 119
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    return-object p0

    :catchall_30
    move-exception p0

    move-object v0, v2

    goto :goto_37

    :catchall_33
    move-exception p0

    goto :goto_37

    :catchall_35
    move-exception p0

    move-object v1, v0

    :goto_37
    if-eqz v0, :cond_3c

    .line 116
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V

    :cond_3c
    if-eqz v1, :cond_41

    .line 119
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 121
    :cond_41
    throw p0
.end method
