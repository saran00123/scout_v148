.class public Lcom/alibaba/sdk/android/tbrest/a/a;
.super Ljava/lang/Object;
.source "RestBaseRequestAuthentication.java"


# instance fields
.field private a:[B

.field private c:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->c:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->h:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->i:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->a:[B

    .line 48
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->h:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->i:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->c:Z

    return-void
.end method

.method public static a([B[B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HmacSHA1"

    .line 57
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 58
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 60
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()[B
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->a:[B

    if-nez v0, :cond_11

    const/16 v0, 0x20

    .line 101
    new-array v0, v0, [B

    fill-array-data v0, :array_14

    .line 104
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/RC4;->rc4([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->a:[B

    .line 106
    :cond_11
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->a:[B

    return-object v0

    :array_14
    .array-data 1
        0x42t
        0x25t
        0x2at
        -0x77t
        0x76t
        -0x68t
        -0x1et
        0x4t
        -0x5ft
        0xft
        -0x1at
        -0xct
        -0x4bt
        -0x66t
        0x47t
        0x17t
        -0x3t
        -0x78t
        -0x1t
        -0x39t
        0x2at
        0x63t
        -0x10t
        -0x65t
        0x67t
        -0x4at
        0x5dt
        -0x72t
        0x70t
        -0x1at
        -0x18t
        -0x18t
    .end array-data
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->i:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_2e

    :cond_a
    if-nez p1, :cond_d

    return-object v1

    .line 88
    :cond_d
    :try_start_d
    iget-boolean v1, p0, Lcom/alibaba/sdk/android/tbrest/a/a;->c:Z

    if-eqz v1, :cond_1e

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/tbrest/a/a;->a([B[B)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 91
    :cond_1e
    invoke-direct {p0}, Lcom/alibaba/sdk/android/tbrest/a/a;->a()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/tbrest/a/a;->a([B[B)Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_2b

    goto :goto_2d

    :catch_2b
    const-string p1, ""

    :goto_2d
    return-object p1

    :cond_2e
    :goto_2e
    const-string p1, "There is no appkey,please check it!"

    .line 78
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v1
.end method
