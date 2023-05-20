.class Lcom/xiaomi/push/ga;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/push/gd;

.field private a:Lcom/xiaomi/push/gf;

.field private a:Ljava/io/InputStream;

.field private a:Ljava/nio/ByteBuffer;

.field private a:Ljava/util/zip/Adler32;

.field private volatile a:Z

.field private a:[B

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/xiaomi/push/gf;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ga;->b:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/util/zip/Adler32;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    new-instance p1, Lcom/xiaomi/push/gd;

    invoke-direct {p1}, Lcom/xiaomi/push/gd;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gd;

    return-void
.end method

.method private a()Ljava/nio/ByteBuffer;
    .registers 9

    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/ga;->a(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const/16 v3, -0x3d02

    if-ne v0, v3, :cond_102

    const/4 v0, 0x5

    if-ne v2, v0, :cond_102

    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iget-object v3, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const v4, 0x8000

    if-gt v0, v4, :cond_fa

    add-int/lit8 v4, v0, 0x4

    iget-object v5, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_5c

    add-int/lit16 v4, v0, 0x800

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_59
    iput-object v4, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    goto :goto_85

    :cond_5c
    iget-object v4, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    const/16 v5, 0x1000

    if-le v4, v5, :cond_85

    const/16 v4, 0x800

    if-ge v0, v4, :cond_85

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_59

    :cond_85
    :goto_85
    iget-object v4, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v0}, Lcom/xiaomi/push/ga;->a(Ljava/nio/ByteBuffer;I)V

    iget-object v4, p0, Lcom/xiaomi/push/ga;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/xiaomi/push/ga;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v2}, Lcom/xiaomi/push/ga;->a(Ljava/nio/ByteBuffer;I)V

    iget-object v2, p0, Lcom/xiaomi/push/ga;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/xiaomi/push/ga;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iget-object v4, p0, Lcom/xiaomi/push/ga;->a:Ljava/util/zip/Adler32;

    invoke-virtual {v4}, Ljava/util/zip/Adler32;->reset()V

    iget-object v4, p0, Lcom/xiaomi/push/ga;->a:Ljava/util/zip/Adler32;

    iget-object v5, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v4, v5, v1, v6}, Ljava/util/zip/Adler32;->update([BII)V

    iget-object v1, p0, Lcom/xiaomi/push/ga;->a:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    long-to-int v1, v4

    if-ne v2, v1, :cond_cf

    iget-object v1, p0, Lcom/xiaomi/push/ga;->a:[B

    if-eqz v1, :cond_cc

    iget-object v2, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3, v0}, Lcom/xiaomi/push/service/bm;->a([B[BZII)[B

    :cond_cc
    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ga;->a:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted Blob bad CRC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fa
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Blob size too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/nio/ByteBuffer;I)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/push/ga;->a:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    sub-int/2addr p2, v1

    add-int/2addr v0, v1

    if-gtz p2, :cond_4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_19
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private c()V
    .registers 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/ga;->a:Z

    invoke-virtual {p0}, Lcom/xiaomi/push/ga;->a()Lcom/xiaomi/push/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/fy;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Lcom/xiaomi/push/fy;->a()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/dw$f;->a([B)Lcom/xiaomi/push/dw$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/dw$f;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v1}, Lcom/xiaomi/push/dw$f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/gf;->a(Ljava/lang/String;)V

    move v0, v3

    :cond_2c
    invoke-virtual {v1}, Lcom/xiaomi/push/dw$f;->c()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v1}, Lcom/xiaomi/push/dw$f;->a()Lcom/xiaomi/push/dw$b;

    move-result-object v2

    new-instance v4, Lcom/xiaomi/push/fy;

    invoke-direct {v4}, Lcom/xiaomi/push/fy;-><init>()V

    const-string v5, "SYNC"

    const-string v6, "CONF"

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/push/fy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/push/dw$b;->a()[B

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/xiaomi/push/fy;->a([BLjava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v2, v4}, Lcom/xiaomi/push/gf;->a(Lcom/xiaomi/push/fy;)V

    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] CONN: host = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/push/dw$f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_67
    if-eqz v0, :cond_154

    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v0}, Lcom/xiaomi/push/gf;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ga;->a:[B

    :cond_71
    :goto_71
    iget-boolean v0, p0, Lcom/xiaomi/push/ga;->a:Z

    if-nez v0, :cond_153

    invoke-virtual {p0}, Lcom/xiaomi/push/ga;->a()Lcom/xiaomi/push/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v1}, Lcom/xiaomi/push/gf;->d()V

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()S

    move-result v1

    if-eq v1, v3, :cond_13b

    const-string v2, " failure:"

    const-string v4, "; Id="

    const-string v5, "[Slim] Parse packet from Blob chid="

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v7, :cond_e6

    if-eq v1, v6, :cond_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] unknow blob type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a5
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_140

    :cond_aa
    :try_start_aa
    iget-object v1, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gd;

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()[B

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/push/gd;->a([BLcom/xiaomi/push/gj;)Lcom/xiaomi/push/ha;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v6, v1}, Lcom/xiaomi/push/gf;->b(Lcom/xiaomi/push/ha;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_bb} :catch_bd

    goto/16 :goto_140

    :catch_bd
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a5

    :cond_e6
    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()Ljava/lang/String;

    move-result-object v1

    const-string v8, "SECMSG"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()I

    move-result v1

    if-eq v1, v7, :cond_fe

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()I

    move-result v1

    if-ne v1, v6, :cond_13b

    :cond_fe
    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13b

    :try_start_108
    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/xiaomi/push/service/bd;->a()Lcom/xiaomi/push/service/bd;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/xiaomi/push/service/bd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd$b;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gd;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fy;->a(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v7, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v6, v1, v7}, Lcom/xiaomi/push/gd;->a([BLcom/xiaomi/push/gj;)Lcom/xiaomi/push/ha;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v6, v1}, Lcom/xiaomi/push/gf;->b(Lcom/xiaomi/push/ha;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_133} :catch_134

    goto :goto_140

    :catch_134
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c3

    :cond_13b
    iget-object v1, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/gf;->a(Lcom/xiaomi/push/fy;)V

    :goto_140
    invoke-virtual {v0}, Lcom/xiaomi/push/fy;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/xiaomi/push/ga;->a:Lcom/xiaomi/push/gf;

    invoke-virtual {v0}, Lcom/xiaomi/push/gf;->b()V

    goto/16 :goto_71

    :cond_153
    return-void

    :cond_154
    const-string v0, "[Slim] Invalid CONN"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Lcom/xiaomi/push/fy;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/push/ga;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_55

    :try_start_9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-ne v2, v3, :cond_19

    new-instance v1, Lcom/xiaomi/push/ge;

    invoke-direct {v1}, Lcom/xiaomi/push/ge;-><init>()V

    goto :goto_21

    :cond_19
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/fy;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/push/fy;

    move-result-object v1

    :goto_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] Read {cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/push/fy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";chid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/push/fy;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_52} :catch_53

    return-object v1

    :catch_53
    move-exception v1

    goto :goto_57

    :catch_55
    move-exception v1

    move v2, v0

    :goto_57
    if-nez v2, :cond_5f

    iget-object v2, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    :cond_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] read Blob ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/push/ga;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x80

    if-le v2, v5, :cond_74

    move v2, v5

    :cond_74
    invoke-static {v4, v0, v2}, Lcom/xiaomi/push/ah;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Err:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    throw v1
.end method

.method a()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/push/ga;->c()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    iget-boolean v1, p0, Lcom/xiaomi/push/ga;->a:Z

    if-eqz v1, :cond_a

    :goto_9
    return-void

    :cond_a
    throw v0
.end method

.method b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ga;->a:Z

    return-void
.end method
