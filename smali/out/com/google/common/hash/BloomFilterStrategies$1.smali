.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;",
            ")Z"
        }
    .end annotation

    .line 69
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitSize()J

    move-result-wide v0

    .line 70
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide p1

    long-to-int v2, p1

    const/16 v3, 0x20

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    const/4 p2, 0x1

    move v3, p2

    :goto_17
    if-gt v3, p3, :cond_2c

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    if-gez v4, :cond_1f

    not-int v4, v4

    :cond_1f
    int-to-long v4, v4

    .line 80
    rem-long/2addr v4, v0

    invoke-virtual {p4, v4, v5}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->get(J)Z

    move-result v4

    if-nez v4, :cond_29

    const/4 p1, 0x0

    return p1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    return p2
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;",
            ")Z"
        }
    .end annotation

    .line 49
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitSize()J

    move-result-wide v0

    .line 50
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide p1

    long-to-int v2, p1

    const/16 v3, 0x20

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    const/4 p2, 0x1

    const/4 v3, 0x0

    :goto_17
    if-gt p2, p3, :cond_29

    mul-int v4, p2, p1

    add-int/2addr v4, v2

    if-gez v4, :cond_1f

    not-int v4, v4

    :cond_1f
    int-to-long v4, v4

    .line 61
    rem-long/2addr v4, v0

    invoke-virtual {p4, v4, v5}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->set(J)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    :cond_29
    return v3
.end method
