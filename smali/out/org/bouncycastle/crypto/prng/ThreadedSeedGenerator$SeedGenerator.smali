.class Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeedGenerator"
.end annotation


# instance fields
.field private volatile counter:I

.field private volatile stop:Z

.field final synthetic this$0:Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->this$0:Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;-><init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;)V

    return-void
.end method


# virtual methods
.method public generateSeed(IZ)[B
    .registers 9

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-array v1, p1, [B

    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-eqz p2, :cond_12

    goto :goto_14

    :cond_12
    mul-int/lit8 p1, p1, 0x8

    :goto_14
    move v0, v2

    :goto_15
    const/4 v3, 0x1

    if-ge v2, p1, :cond_3b

    :catch_18
    :goto_18
    iget v4, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    if-ne v4, v0, :cond_22

    const-wide/16 v4, 0x1

    :try_start_1e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_18

    goto :goto_18

    :cond_22
    iget v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    if-eqz p2, :cond_2c

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_38

    :cond_2c
    div-int/lit8 v4, v2, 0x8

    aget-byte v5, v1, v4

    shl-int/lit8 v3, v5, 0x1

    and-int/lit8 v5, v0, 0x1

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3b
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    return-object v1
.end method

.method public run()V
    .registers 2

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    if-nez v0, :cond_b

    iget v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    goto :goto_0

    :cond_b
    return-void
.end method
