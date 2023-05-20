.class public final Lcom/xiaomi/push/gc$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/gc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public a([BI)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_20
    .catchall {:try_start_1 .. :try_end_b} :catchall_19

    :try_start_b
    new-array p2, p2, [B

    invoke-virtual {v1, p2}, Ljava/util/zip/GZIPInputStream;->read([B)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_17
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    :try_start_10
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    return-object p2

    :catchall_14
    move-exception p1

    move-object v0, v1

    goto :goto_1a

    :catch_17
    move-object v0, v1

    goto :goto_20

    :catchall_19
    move-exception p1

    :goto_1a
    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    throw p1

    :catch_20
    :goto_20
    if-eqz v0, :cond_25

    :try_start_22
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-object p1
.end method
