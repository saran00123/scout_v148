.class final Lcom/google/firebase/iid/zzaa;
.super Ljava/lang/Object;


# instance fields
.field private final zzby:Ljava/security/KeyPair;

.field private final zzbz:J


# direct methods
.method constructor <init>(Ljava/security/KeyPair;J)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    .line 3
    iput-wide p2, p0, Lcom/google/firebase/iid/zzaa;->zzbz:J

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzaa;)Ljava/lang/String;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/google/firebase/iid/zzaa;->zzv()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/zzaa;)Ljava/lang/String;
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/google/firebase/iid/zzaa;->zzw()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/iid/zzaa;)J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/google/firebase/iid/zzaa;->zzbz:J

    return-wide v0
.end method

.method private final zzv()Ljava/lang/String;
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0xb

    .line 16
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzw()Ljava/lang/String;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0xb

    .line 19
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 7
    instance-of v0, p1, Lcom/google/firebase/iid/zzaa;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 9
    :cond_6
    check-cast p1, Lcom/google/firebase/iid/zzaa;

    .line 10
    iget-wide v2, p0, Lcom/google/firebase/iid/zzaa;->zzbz:J

    iget-wide v4, p1, Lcom/google/firebase/iid/zzaa;->zzbz:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    .line 11
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v2, p1, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    .line 12
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iget-object p1, p1, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    return v1
.end method

.method final getCreationTime()J
    .registers 3

    .line 6
    iget-wide v0, p0, Lcom/google/firebase/iid/zzaa;->zzbz:J

    return-wide v0
.end method

.method final getKeyPair()Ljava/security/KeyPair;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/iid/zzaa;->zzby:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/firebase/iid/zzaa;->zzbz:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
