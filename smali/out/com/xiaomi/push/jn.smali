.class public Lcom/xiaomi/push/jn;
.super Lcom/xiaomi/push/jr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/jn$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/push/jw;


# instance fields
.field protected a:I

.field protected a:Z

.field private a:[B

.field protected b:Z

.field private b:[B

.field protected c:Z

.field private c:[B

.field private d:[B

.field private e:[B

.field private f:[B

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/push/jw;

    invoke-direct {v0}, Lcom/xiaomi/push/jw;-><init>()V

    sput-object v0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/jw;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/kb;ZZ)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/xiaomi/push/jr;-><init>(Lcom/xiaomi/push/kb;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/push/jn;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/jn;->b:Z

    iput-boolean p1, p0, Lcom/xiaomi/push/jn;->c:Z

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/xiaomi/push/jn;->a:[B

    const/4 p1, 0x2

    new-array v1, p1, [B

    iput-object v1, p0, Lcom/xiaomi/push/jn;->b:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/xiaomi/push/jn;->c:[B

    const/16 v2, 0x8

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/xiaomi/push/jn;->d:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/jn;->e:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/xiaomi/push/jn;->f:[B

    new-array p1, v1, [B

    iput-object p1, p0, Lcom/xiaomi/push/jn;->g:[B

    new-array p1, v2, [B

    iput-object p1, p0, Lcom/xiaomi/push/jn;->h:[B

    iput-boolean p2, p0, Lcom/xiaomi/push/jn;->a:Z

    iput-boolean p3, p0, Lcom/xiaomi/push/jn;->b:Z

    return-void
.end method

.method private a([BII)I
    .registers 5

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/jn;->c(I)V

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/kb;->b([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a()B
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v0}, Lcom/xiaomi/push/kb;->b()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v0}, Lcom/xiaomi/push/kb;->a()[B

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v2}, Lcom/xiaomi/push/kb;->a()I

    move-result v2

    aget-byte v0, v0, v2

    iget-object v2, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/kb;->a(I)V

    return v0

    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/push/jn;->e:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaomi/push/jn;->a([BII)I

    iget-object v0, p0, Lcom/xiaomi/push/jn;->e:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public a()D
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public a()I
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/jn;->g:[B

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1e

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v0}, Lcom/xiaomi/push/kb;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->a()I

    move-result v2

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/kb;->a(I)V

    goto :goto_23

    :cond_1e
    iget-object v1, p0, Lcom/xiaomi/push/jn;->g:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/push/jn;->a([BII)I

    :goto_23
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public a()J
    .registers 9

    iget-object v0, p0, Lcom/xiaomi/push/jn;->h:[B

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->b()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v1, v3, :cond_1f

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v0}, Lcom/xiaomi/push/kb;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->a()I

    move-result v2

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/kb;->a(I)V

    goto :goto_24

    :cond_1f
    iget-object v1, p0, Lcom/xiaomi/push/jn;->h:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/push/jn;->a([BII)I

    :goto_24
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x30

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x10

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x6

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public a()Lcom/xiaomi/push/jo;
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()S

    move-result v1

    :goto_c
    new-instance v2, Lcom/xiaomi/push/jo;

    const-string v3, ""

    invoke-direct {v2, v3, v0, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    return-object v2
.end method

.method public a()Lcom/xiaomi/push/jp;
    .registers 4

    new-instance v0, Lcom/xiaomi/push/jp;

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()B

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/jp;-><init>(BI)V

    return-object v0
.end method

.method public a()Lcom/xiaomi/push/jq;
    .registers 5

    new-instance v0, Lcom/xiaomi/push/jq;

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()B

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()B

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/jq;-><init>(BBI)V

    return-object v0
.end method

.method public a()Lcom/xiaomi/push/jv;
    .registers 4

    new-instance v0, Lcom/xiaomi/push/jv;

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()B

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/jv;-><init>(BI)V

    return-object v0
.end method

.method public a()Lcom/xiaomi/push/jw;
    .registers 2

    sget-object v0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/jw;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->b()I

    move-result v1

    if-lt v1, v0, :cond_2d

    :try_start_c
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v2}, Lcom/xiaomi/push/kb;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v3}, Lcom/xiaomi/push/kb;->a()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/kb;->a(I)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_24} :catch_25

    return-object v1

    :catch_25
    new-instance v0, Lcom/xiaomi/push/jl;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/jn;->c(I)V

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/xiaomi/push/kb;->b([BII)I

    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    new-instance p1, Lcom/xiaomi/push/jl;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/xiaomi/push/jl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ljava/nio/ByteBuffer;
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->c(I)V

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->b()I

    move-result v1

    if-lt v1, v0, :cond_25

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v2}, Lcom/xiaomi/push/kb;->a()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/kb;->a(I)V

    return-object v1

    :cond_25
    new-array v1, v0, [B

    iget-object v2, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/xiaomi/push/kb;->b([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a()S
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/jn;->f:[B

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1e

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v0}, Lcom/xiaomi/push/kb;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1}, Lcom/xiaomi/push/kb;->a()I

    move-result v2

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/kb;->a(I)V

    goto :goto_23

    :cond_1e
    iget-object v1, p0, Lcom/xiaomi/push/jn;->f:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/push/jn;->a([BII)I

    :goto_23
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(B)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/push/kb;->a([BII)V

    return-void
.end method

.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/jn;->c:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    iget-object v0, p0, Lcom/xiaomi/push/jn;->c:[B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaomi/push/kb;->a([BII)V

    return-void
.end method

.method public a(J)V
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/push/jn;->d:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x1

    aput-byte v1, v0, v5

    const/16 v1, 0x28

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x2

    aput-byte v1, v0, v5

    const/16 v1, 0x20

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const/16 v1, 0x18

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    const/16 v1, 0x10

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x5

    aput-byte v1, v0, v5

    const/16 v1, 0x8

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v0, v6

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    iget-object p1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    iget-object p2, p0, Lcom/xiaomi/push/jn;->d:[B

    invoke-virtual {p1, p2, v2, v1}, Lcom/xiaomi/push/kb;->a([BII)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/jo;)V
    .registers 3

    iget-byte v0, p1, Lcom/xiaomi/push/jo;->a:B

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(B)V

    iget-short p1, p1, Lcom/xiaomi/push/jo;->a:S

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/jn;->a(S)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/jp;)V
    .registers 3

    iget-byte v0, p1, Lcom/xiaomi/push/jp;->a:B

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(B)V

    iget p1, p1, Lcom/xiaomi/push/jp;->a:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/jn;->a(I)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/jq;)V
    .registers 3

    iget-byte v0, p1, Lcom/xiaomi/push/jq;->a:B

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(B)V

    iget-byte v0, p1, Lcom/xiaomi/push/jq;->b:B

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(B)V

    iget p1, p1, Lcom/xiaomi/push/jq;->a:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/jn;->a(I)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/jw;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/push/kb;->a([BII)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    new-instance p1, Lcom/xiaomi/push/jl;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/xiaomi/push/jl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(I)V

    iget-object v1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/push/kb;->a([BII)V

    return-void
.end method

.method public a(S)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/jn;->b:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/xiaomi/push/jn;->a:Lcom/xiaomi/push/kb;

    iget-object v0, p0, Lcom/xiaomi/push/jn;->b:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaomi/push/kb;->a([BII)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/jn;->a(B)V

    return-void
.end method

.method public a()Z
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/jn;->a()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/jn;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/jn;->c:Z

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/jn;->a(B)V

    return-void
.end method

.method protected c(I)V
    .registers 5

    if-ltz p1, :cond_28

    iget-boolean v0, p0, Lcom/xiaomi/push/jn;->c:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/xiaomi/push/jn;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/push/jn;->a:I

    iget v0, p0, Lcom/xiaomi/push/jn;->a:I

    if-ltz v0, :cond_10

    goto :goto_27

    :cond_10
    new-instance v0, Lcom/xiaomi/push/jl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/push/jl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    :goto_27
    return-void

    :cond_28
    new-instance v0, Lcom/xiaomi/push/jl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/push/jl;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public j()V
    .registers 1

    return-void
.end method
