.class public final Lorg/bouncycastle/crypto/util/DigestFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMD5()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA1()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA224()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA256()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA384()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA3_224()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_256()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_384()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_512()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA512()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA512_224()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA512_256()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    return-object v0
.end method
