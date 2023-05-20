.class public Lcom/xiaomi/push/service/bm;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x8


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x29a

    iput v0, p0, Lcom/xiaomi/push/service/bm;->d:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/service/bm;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bm;->c:I

    iput v0, p0, Lcom/xiaomi/push/service/bm;->b:I

    return-void
.end method

.method public static a(B)I
    .registers 1

    if-ltz p0, :cond_3

    return p0

    :cond_3
    add-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bm;->c:I

    iput v0, p0, Lcom/xiaomi/push/service/bm;->b:I

    return-void
.end method

.method private a(I[BZ)V
    .registers 11

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_f

    iget-object v3, p0, Lcom/xiaomi/push/service/bm;->a:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    iput v1, p0, Lcom/xiaomi/push/service/bm;->c:I

    iput v1, p0, Lcom/xiaomi/push/service/bm;->b:I

    :goto_13
    iget v2, p0, Lcom/xiaomi/push/service/bm;->b:I

    const/4 v4, 0x1

    if-ge v2, p1, :cond_3f

    iget v5, p0, Lcom/xiaomi/push/service/bm;->c:I

    iget-object v6, p0, Lcom/xiaomi/push/service/bm;->a:[B

    aget-byte v2, v6, v2

    invoke-static {v2}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v2

    add-int/2addr v5, v2

    iget v2, p0, Lcom/xiaomi/push/service/bm;->b:I

    rem-int/2addr v2, v0

    aget-byte v2, p2, v2

    invoke-static {v2}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v2

    add-int/2addr v5, v2

    rem-int/2addr v5, v3

    iput v5, p0, Lcom/xiaomi/push/service/bm;->c:I

    iget-object v2, p0, Lcom/xiaomi/push/service/bm;->a:[B

    iget v5, p0, Lcom/xiaomi/push/service/bm;->b:I

    iget v6, p0, Lcom/xiaomi/push/service/bm;->c:I

    invoke-static {v2, v5, v6}, Lcom/xiaomi/push/service/bm;->a([BII)V

    iget v2, p0, Lcom/xiaomi/push/service/bm;->b:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/xiaomi/push/service/bm;->b:I

    goto :goto_13

    :cond_3f
    if-eq p1, v3, :cond_58

    iget v2, p0, Lcom/xiaomi/push/service/bm;->c:I

    iget-object v5, p0, Lcom/xiaomi/push/service/bm;->a:[B

    aget-byte v5, v5, p1

    invoke-static {v5}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v5

    add-int/2addr v2, v5

    rem-int v0, p1, v0

    aget-byte p2, p2, v0

    invoke-static {p2}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result p2

    add-int/2addr v2, p2

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/push/service/bm;->d:I

    :cond_58
    if-eqz p3, :cond_f3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "S_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6e
    if-gt v1, p1, :cond_83

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/push/service/bm;->a:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_83
    const-string v0, "   j_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/service/bm;->c:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/push/service/bm;->d:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   S_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[j_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/push/service/bm;->a:[B

    iget v5, p0, Lcom/xiaomi/push/service/bm;->c:I

    aget-byte v3, v3, v5

    invoke-static {v3}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/push/service/bm;->a:[B

    iget p3, p0, Lcom/xiaomi/push/service/bm;->d:I

    aget-byte p1, p1, p3

    invoke-static {p1}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/push/service/bm;->a:[B

    aget-byte p1, p1, v4

    if-eqz p1, :cond_ec

    const-string p1, "   S[1]!=0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ec
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_f3
    return-void
.end method

.method private a([B)V
    .registers 4

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/push/service/bm;->a(I[BZ)V

    return-void
.end method

.method private static a([BII)V
    .registers 5

    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    aput-byte v0, p0, p2

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    aget-byte v3, p0, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1b
    array-length v2, p0

    const/16 v3, 0x5f

    aput-byte v3, v0, v2

    :goto_20
    array-length v2, p1

    if-ge v1, v2, :cond_2e

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2e
    return-object v0
.end method

.method public static a([BLjava/lang/String;)[B
    .registers 2

    invoke-static {p1}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/bm;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[B)[B
    .registers 6

    array-length v0, p1

    new-array v0, v0, [B

    new-instance v1, Lcom/xiaomi/push/service/bm;

    invoke-direct {v1}, Lcom/xiaomi/push/service/bm;-><init>()V

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/bm;->a([B)V

    invoke-direct {v1}, Lcom/xiaomi/push/service/bm;->a()V

    const/4 p0, 0x0

    :goto_f
    array-length v2, p1

    if-ge p0, v2, :cond_1f

    aget-byte v2, p1, p0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/bm;->a()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    :cond_1f
    return-object v0
.end method

.method public static a([B[BZII)[B
    .registers 10

    if-ltz p3, :cond_32

    array-length v0, p1

    if-gt p3, v0, :cond_32

    add-int v0, p3, p4

    array-length v1, p1

    if-gt v0, v1, :cond_32

    const/4 v0, 0x0

    if-nez p2, :cond_11

    new-array p2, p4, [B

    move v1, v0

    goto :goto_13

    :cond_11
    move-object p2, p1

    move v1, p3

    :goto_13
    new-instance v2, Lcom/xiaomi/push/service/bm;

    invoke-direct {v2}, Lcom/xiaomi/push/service/bm;-><init>()V

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/bm;->a([B)V

    invoke-direct {v2}, Lcom/xiaomi/push/service/bm;->a()V

    :goto_1e
    if-ge v0, p4, :cond_31

    add-int p0, v1, v0

    add-int v3, p3, v0

    aget-byte v3, p1, v3

    invoke-virtual {v2}, Lcom/xiaomi/push/service/bm;->a()B

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_31
    return-object p2

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " len = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a()B
    .registers 5

    iget v0, p0, Lcom/xiaomi/push/service/bm;->b:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/bm;->b:I

    iget v0, p0, Lcom/xiaomi/push/service/bm;->c:I

    iget-object v1, p0, Lcom/xiaomi/push/service/bm;->a:[B

    iget v2, p0, Lcom/xiaomi/push/service/bm;->b:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/bm;->c:I

    iget-object v0, p0, Lcom/xiaomi/push/service/bm;->a:[B

    iget v1, p0, Lcom/xiaomi/push/service/bm;->b:I

    iget v2, p0, Lcom/xiaomi/push/service/bm;->c:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/bm;->a([BII)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bm;->a:[B

    iget v1, p0, Lcom/xiaomi/push/service/bm;->b:I

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/push/service/bm;->a:[B

    iget v3, p0, Lcom/xiaomi/push/service/bm;->c:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/bm;->a(B)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    return v0
.end method
