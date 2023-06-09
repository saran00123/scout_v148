.class public final Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field public static final KEY_SIZE:I = 0x20


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->data:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->data:[B

    invoke-static {p1, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne v0, p1, :cond_13

    return-void

    :cond_13
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of X25519 public key"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BI)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v1, 0x20

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->data:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->data:[B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public encode([BI)V
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getEncoded()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
