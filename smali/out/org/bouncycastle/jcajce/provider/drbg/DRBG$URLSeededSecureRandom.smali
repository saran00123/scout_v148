.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;
.super Ljava/security/SecureRandom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URLSeededSecureRandom"
.end annotation


# instance fields
.field private final seedStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridRandomProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridRandomProvider;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;->seedStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$300(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;->seedStream:Ljava/io/InputStream;

    return-object p0
.end method

.method private privilegedRead([BII)I
    .registers 5

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;[BII)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 5

    monitor-enter p0

    :try_start_1
    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-eq v0, v1, :cond_12

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;->privilegedRead([BII)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_12

    add-int/2addr v0, v1

    goto :goto_4

    :cond_12
    array-length v1, p1

    if-ne v0, v1, :cond_17

    monitor-exit p0

    return-object p1

    :cond_17
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "unable to fully read random source"

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public setSeed(J)V
    .registers 3

    return-void
.end method

.method public setSeed([B)V
    .registers 2

    return-void
.end method
