.class public Lcom/meizu/cloud/pushsdk/c/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/meizu/cloud/pushsdk/c/g/e;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[C

.field public static final b:Lcom/meizu/cloud/pushsdk/c/g/e;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/g/e;->a:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/g/e;->a([B)Lcom/meizu/cloud/pushsdk/c/g/e;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/g/e;->b:Lcom/meizu/cloud/pushsdk/c/g/e;

    return-void

    nop

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    return-void
.end method

.method public static a(Ljava/io/InputStream;I)Lcom/meizu/cloud/pushsdk/c/g/e;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_37

    if-ltz p1, :cond_20

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p1, :cond_1a

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    add-int/2addr v1, v2

    goto :goto_7

    :cond_14
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1a
    new-instance p0, Lcom/meizu/cloud/pushsdk/c/g/e;

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/c/g/e;-><init>([B)V

    return-object p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/e;
    .registers 3

    if-eqz p0, :cond_10

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/e;

    sget-object v1, Lcom/meizu/cloud/pushsdk/c/g/o;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/e;-><init>([B)V

    iput-object p0, v0, Lcom/meizu/cloud/pushsdk/c/g/e;->e:Ljava/lang/String;

    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs a([B)Lcom/meizu/cloud/pushsdk/c/g/e;
    .registers 2

    if-eqz p0, :cond_e

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/e;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/c/g/e;-><init>([B)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/e;
    .registers 3

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/g/e;->a([B)Lcom/meizu/cloud/pushsdk/c/g/e;

    move-result-object p1
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lcom/meizu/cloud/pushsdk/c/g/e;->a(Ljava/io/InputStream;I)Lcom/meizu/cloud/pushsdk/c/g/e;

    move-result-object p1

    :try_start_8
    const-class v0, Lcom/meizu/cloud/pushsdk/c/g/e;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p1, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_19} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/e;)I
    .registers 11

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/e;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/c/g/e;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_28

    invoke-virtual {p0, v4}, Lcom/meizu/cloud/pushsdk/c/g/e;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lcom/meizu/cloud/pushsdk/c/g/e;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_23

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_23
    if-ge v7, v8, :cond_26

    goto :goto_27

    :cond_26
    move v5, v6

    :goto_27
    return v5

    :cond_28
    if-ne v0, v1, :cond_2b

    return v3

    :cond_2b
    if-ge v0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v5, v6

    :goto_2f
    return v5
.end method

.method public a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    sget-object v2, Lcom/meizu/cloud/pushsdk/c/g/o;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->e:Ljava/lang/String;

    :goto_10
    return-object v0
.end method

.method a(Lcom/meizu/cloud/pushsdk/c/g/b;)V
    .registers 5

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b([BII)Lcom/meizu/cloud/pushsdk/c/g/b;

    return-void
.end method

.method public a(I[BII)Z
    .registers 7

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_12

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_12

    invoke-static {v0, p1, p2, p3, p4}, Lcom/meizu/cloud/pushsdk/c/g/o;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public b()Lcom/meizu/cloud/pushsdk/c/g/e;
    .registers 2

    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/c/g/e;->b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v3, v2, :cond_25

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/meizu/cloud/pushsdk/c/g/e;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/meizu/cloud/pushsdk/c/g/e;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/e;->a(Lcom/meizu/cloud/pushsdk/c/g/e;)I

    move-result p1

    return p1
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/meizu/cloud/pushsdk/c/g/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    check-cast p1, Lcom/meizu/cloud/pushsdk/c/g/e;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/c/g/e;->d()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1c

    array-length v1, v3

    invoke-virtual {p1, v2, v3, v2, v1}, Lcom/meizu/cloud/pushsdk/c/g/e;->a(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->d:I

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->d:I

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/e;->c:[B

    array-length v1, v0

    if-nez v1, :cond_8

    const-string v0, "ByteString[size=0]"

    return-object v0

    :cond_8
    array-length v1, v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-gt v1, v2, :cond_26

    new-array v1, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/e;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "ByteString[size=%s data=%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    new-array v1, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/e;->b()Lcom/meizu/cloud/pushsdk/c/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/e;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "ByteString[size=%s md5=%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
