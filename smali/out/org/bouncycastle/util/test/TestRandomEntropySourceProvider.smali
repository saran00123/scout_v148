.class public Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final _predictionResistant:Z

.field private final _sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    return p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .registers 3

    new-instance v0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;-><init>(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;I)V

    return-object v0
.end method
