.class public final Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field public static final KEY_SIZE:I = 0x39

.field public static final SIGNATURE_SIZE:I = 0x72


# instance fields
.field private cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

.field private final data:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x39

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    invoke-static {p1, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne v0, p1, :cond_13

    return-void

    :cond_13
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of Ed448 private key"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x39

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->generatePrivateKey(Ljava/security/SecureRandom;[B)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x39

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public encode([BI)V
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x39

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public generatePublicKey()Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-nez v1, :cond_18

    const/16 v1, 0x39

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->generatePublicKey([BI[BI)V

    new-instance v2, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;-><init>([BI)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    :cond_18
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getEncoded()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign(ILorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;[B[BII[BI)V
    .registers 17

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->sign(I[B[BII[BI)V

    return-void
.end method

.method public sign(I[B[BII[BI)V
    .registers 22

    move-object v0, p0

    move v1, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    move-result-object v2

    const/16 v3, 0x39

    new-array v6, v3, [B

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->encode([BI)V

    if-eqz v1, :cond_3b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    const/16 v1, 0x40

    move/from16 v2, p5

    if-ne v1, v2, :cond_2b

    iget-object v4, v0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v4 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->signPrehash([BI[BI[B[BI[BI)V

    goto :goto_50

    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "msgLen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "algorithm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    move/from16 v2, p5

    iget-object v4, v0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-static/range {v4 .. v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->sign([BI[BI[B[BII[BI)V

    :goto_50
    return-void
.end method
