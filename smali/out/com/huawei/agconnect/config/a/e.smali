.class public Lcom/huawei/agconnect/config/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/huawei/agconnect/config/a/e;->a:[C

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    aget-byte v3, p0, v2

    sget-object v4, Lcom/huawei/agconnect/config/a/e;->a:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/huawei/agconnect/config/a/e;->a:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/agconnect/config/a/e;->a([C)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([C)[B
    .registers 9

    array-length v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5e

    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    array-length v3, p0

    if-ge v1, v3, :cond_5d

    aget-char v3, p0, v1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const-string v5, "Illegal hexadecimal character at index "

    const/4 v6, -0x1

    if-eq v3, v6, :cond_48

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    invoke-static {v7, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-eq v4, v6, :cond_33

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    return-object v0

    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Odd number of characters."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
