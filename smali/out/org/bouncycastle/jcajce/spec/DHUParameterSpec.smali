.class public Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final ephemeralPrivateKey:Ljava/security/PrivateKey;

.field private final ephemeralPublicKey:Ljava/security/PublicKey;

.field private final otherPartyEphemeralKey:Ljava/security/PublicKey;

.field private final userKeyingMaterial:[B


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/PublicKey;)V
    .registers 5

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/PublicKey;[B)V
    .registers 5

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1c

    if-eqz p3, :cond_14

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->otherPartyEphemeralKey:Ljava/security/PublicKey;

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->userKeyingMaterial:[B

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "other party ephemeral key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ephemeral private key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEphemeralPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getEphemeralPublicKey()Ljava/security/PublicKey;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getOtherPartyEphemeralKey()Ljava/security/PublicKey;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->otherPartyEphemeralKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUserKeyingMaterial()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->userKeyingMaterial:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
