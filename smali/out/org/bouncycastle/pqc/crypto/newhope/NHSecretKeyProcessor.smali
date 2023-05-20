.class public Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor$PartyUBuilder;,
        Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor$PartyVBuilder;
    }
.end annotation


# instance fields
.field private final xof:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method private constructor <init>([B[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    if-eqz p2, :cond_1b

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p2

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :cond_1b
    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method synthetic constructor <init>([B[BLorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;-><init>([B[B)V

    return-void
.end method

.method private static xor([B[B)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-eq v0, v1, :cond_f

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method


# virtual methods
.method public processKey([B)[B
    .registers 6

    array-length v0, p1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xor([B[B)V

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object p1
.end method
