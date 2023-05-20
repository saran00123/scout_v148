.class public Lcom/huawei/hms/framework/common/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field private static final BUFF_SIZE:I = 0x1000

.field private static final MAX_SIZE:I = 0x1000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/database/Cursor;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 42
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method public static closeSecure(Ljava/io/Closeable;)V
    .registers 3

    const-string v0, "IOUtil"

    if-eqz p0, :cond_f

    .line 90
    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_14

    :catch_8
    move-exception p0

    const-string v1, "closeSecure IOException"

    .line 92
    invoke-static {v0, v1, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_f
    const-string p0, "closeable is null"

    .line 95
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_14
    return-void
.end method

.method public static closeSecure(Ljava/io/InputStream;)V
    .registers 1

    .line 70
    invoke-static {p0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeSecure(Ljava/io/OutputStream;)V
    .registers 1

    .line 79
    invoke-static {p0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeSecure(Ljava/io/Reader;)V
    .registers 1

    .line 52
    invoke-static {p0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeSecure(Ljava/io/Writer;)V
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/Closeable;)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 110
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_6
    const/4 v3, -0x1

    .line 111
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_23

    const-wide/32 v5, 0x1000000

    cmp-long v3, v1, v5

    if-gtz v3, :cond_1b

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v4

    add-long/2addr v1, v3

    goto :goto_6

    .line 113
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "input data too large for byte."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    return-wide v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
