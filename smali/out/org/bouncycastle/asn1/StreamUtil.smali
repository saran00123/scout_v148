.class Lorg/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_MEMORY:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBodyLength(I)I
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_17

    move v1, v0

    :goto_6
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    :goto_10
    if-ltz v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x8

    goto :goto_10

    :cond_17
    return v0
.end method

.method static calculateTagLength(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_27

    const/16 v1, 0x80

    if-ge p0, v1, :cond_b

    const/4 v0, 0x2

    goto :goto_27

    :cond_b
    const/4 v2, 0x5

    new-array v2, v2, [B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, p0, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_16
    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, p0, 0x7f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v4, 0x7f

    if-gt p0, v4, :cond_16

    array-length p0, v2

    sub-int/2addr p0, v3

    add-int/2addr v0, p0

    :cond_27
    :goto_27
    return v0
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .registers 6

    instance-of v0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result p0

    return p0

    :cond_b
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_16

    check-cast p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result p0

    return p0

    :cond_16
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_21
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_3c

    :try_start_28
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_3c

    goto :goto_36

    :cond_35
    move-wide v3, v1

    :goto_36
    cmp-long p0, v3, v1

    if-gez p0, :cond_3c

    long-to-int p0, v3

    return p0

    :catch_3c
    :cond_3c
    sget-wide v3, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    cmp-long p0, v3, v1

    if-lez p0, :cond_46

    const p0, 0x7fffffff

    return p0

    :cond_46
    long-to-int p0, v3

    return p0
.end method
