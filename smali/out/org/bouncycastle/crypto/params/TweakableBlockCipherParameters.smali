.class public Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final key:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private final tweak:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->tweak:[B

    return-void
.end method


# virtual methods
.method public getKey()Lorg/bouncycastle/crypto/params/KeyParameter;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getTweak()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->tweak:[B

    return-object v0
.end method
