.class public Lcom/ta/utdid2/device/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/device/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ta/utdid2/device/c;

.field private static b:Ljava/util/regex/Pattern;

.field private static final d:Ljava/lang/Object;

.field private static f:I

.field private static final i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:Lcom/ta/utdid2/b/a/c;

.field private e:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "[^0-9a-zA-Z=/+]+"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->b:Ljava/util/regex/Pattern;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    sput v0, Lcom/ta/utdid2/device/c;->f:I

    const-string v0, ""

    .line 56
    sput-object v0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    .line 63
    iput-object p1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/a/a;->a(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/ta/utdid2/b/a/c;

    sget-object v1, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    const-string v2, "Alvin2"

    invoke-direct {v0, p1, v1, v2}, Lcom/ta/utdid2/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    return-void
.end method

.method static synthetic a(Lcom/ta/utdid2/device/c;)Lcom/ta/utdid2/b/a/c;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;
    .registers 3

    if-eqz p0, :cond_19

    .line 73
    sget-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v0, :cond_19

    .line 74
    sget-object v0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_9
    sget-object v1, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v1, :cond_14

    .line 76
    new-instance v1, Lcom/ta/utdid2/device/c;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    .line 78
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p0

    .line 81
    :cond_19
    :goto_19
    sget-object p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    return-object p0
.end method

.method static a(Lcom/ta/utdid2/device/c$a;)V
    .registers 3

    .line 403
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ta/utdid2/device/c$5;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/c$5;-><init>(Lcom/ta/utdid2/device/c$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 420
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/ta/utdid2/device/c;Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static b([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 391
    new-array v0, v0, [B

    fill-array-data v0, :array_28

    const-string v1, "HmacSHA1"

    .line 395
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 396
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/ta/a/e/g;->b([B)[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 397
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 398
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 399
    invoke-static {p0, v0}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_28
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method static c(Ljava/lang/String;)Z
    .registers 4

    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "\n"

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    const/16 v0, 0x18

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2f

    .line 346
    sget-object v0, Lcom/ta/utdid2/device/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 348
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2f
    return v1
.end method

.method private c()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 358
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "generateUtdid"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "UTUtdid"

    invoke-static {v3, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 363
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 366
    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v1

    .line 367
    invoke-static {v3}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v3

    const/4 v4, 0x4

    .line 368
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 369
    invoke-virtual {v0, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v1, 0x3

    .line 370
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ta/utdid2/a/a/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_53} :catch_54

    goto :goto_6e

    .line 376
    :catch_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    :goto_6e
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)I

    move-result v1

    .line 379
    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v1

    .line 380
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 381
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/c;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 384
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 5

    .line 143
    invoke-static {p1}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x6

    .line 144
    sput v0, Lcom/ta/utdid2/device/c;->f:I

    const/4 v0, 0x2

    .line 145
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utdid type:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ta/utdid2/device/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UTUtdid"

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    sget v1, Lcom/ta/utdid2/device/c;->f:I

    invoke-virtual {v0, p1, v1}, Lcom/ta/utdid2/b/a/c;->a(Ljava/lang/String;I)V

    .line 150
    new-instance v0, Lcom/ta/utdid2/device/c$1;

    invoke-direct {v0, p0, p1}, Lcom/ta/utdid2/device/c$1;-><init>(Lcom/ta/utdid2/device/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V

    :cond_2e
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 3

    .line 165
    invoke-static {p1}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 169
    :cond_7
    new-instance v0, Lcom/ta/utdid2/device/c$2;

    invoke-direct {v0, p0, p1}, Lcom/ta/utdid2/device/c$2;-><init>(Lcom/ta/utdid2/device/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 4

    .line 261
    invoke-static {p1}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 263
    :try_start_6
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method private s()Ljava/lang/String;
    .registers 4

    .line 106
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->t()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    goto :goto_28

    .line 113
    :cond_26
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    .line 116
    :goto_28
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    return-object v0

    .line 122
    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->c()[B

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x2

    .line 125
    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    const/4 v0, 0x6

    .line 127
    sput v0, Lcom/ta/utdid2/device/c;->f:I

    .line 128
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_42} :catch_43

    return-object v0

    :catch_43
    move-exception v0

    .line 133
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {v2, v0, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setExtendFactor(Ljava/lang/String;)V
    .registers 1

    .line 59
    sput-object p0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    return-void
.end method

.method static setType(I)V
    .registers 1

    .line 89
    sput p0, Lcom/ta/utdid2/device/c;->f:I

    return-void
.end method

.method private t()Ljava/lang/String;
    .registers 8

    .line 185
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->u()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "utdid type"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "UTUtdid"

    const/4 v6, 0x2

    if-eqz v1, :cond_26

    .line 187
    sput v6, Lcom/ta/utdid2/device/c;->f:I

    .line 188
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    sget v2, Lcom/ta/utdid2/device/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    return-object v0

    .line 195
    :cond_26
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->v()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 197
    sput v6, Lcom/ta/utdid2/device/c;->f:I

    .line 198
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    sget v2, Lcom/ta/utdid2/device/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    return-object v0

    .line 205
    :cond_45
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/c;->o()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 207
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v1}, Lcom/ta/utdid2/b/a/c;->a()I

    move-result v1

    if-nez v1, :cond_5c

    .line 209
    sput v4, Lcom/ta/utdid2/device/c;->f:I

    goto :goto_5e

    .line 211
    :cond_5c
    sput v1, Lcom/ta/utdid2/device/c;->f:I

    .line 213
    :goto_5e
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "get utdid from sp. type"

    aput-object v2, v1, v3

    sget v2, Lcom/ta/utdid2/device/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v1, Lcom/ta/utdid2/device/c$3;

    invoke-direct {v1, p0, v0}, Lcom/ta/utdid2/device/c$3;-><init>(Lcom/ta/utdid2/device/c;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V

    return-object v0

    .line 233
    :cond_78
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/c;->p()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v1, 0x3

    .line 235
    sput v1, Lcom/ta/utdid2/device/c;->f:I

    .line 236
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    sget v2, Lcom/ta/utdid2/device/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    sget v2, Lcom/ta/utdid2/device/c;->f:I

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/b/a/c;->a(I)Z

    .line 241
    new-instance v1, Lcom/ta/utdid2/device/c$4;

    invoke-direct {v1, p0, v0}, Lcom/ta/utdid2/device/c$4;-><init>(Lcom/ta/utdid2/device/c;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V

    return-object v0

    .line 252
    :cond_a6
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "read utdid is null"

    aput-object v1, v0, v3

    invoke-static {v5, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .registers 3

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    const-string v0, ""

    :goto_f
    return-object v0
.end method

.method private v()Ljava/lang/String;
    .registers 9

    const-string v0, "UTUtdid"

    .line 290
    :try_start_2
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 v1, 0x0

    :goto_10
    const/4 v2, 0x0

    .line 296
    :try_start_11
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 297
    new-instance v3, Lcom/ta/utdid2/device/e;

    invoke-direct {v3}, Lcom/ta/utdid2/device/e;-><init>()V

    .line 299
    invoke-virtual {v3, v1}, Lcom/ta/utdid2/device/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-static {v4}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_37

    .line 301
    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "OldSettings_1"

    aput-object v3, v1, v2

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    return-object v4

    .line 308
    :cond_37
    invoke-virtual {v3, v1}, Lcom/ta/utdid2/device/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v3}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 310
    new-array v1, v7, [Ljava/lang/Object;

    const-string v4, "OldSettings_2"

    aput-object v4, v1, v2

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    return-object v3

    .line 316
    :cond_50
    new-instance v3, Lcom/ta/utdid2/device/d;

    invoke-direct {v3}, Lcom/ta/utdid2/device/d;-><init>()V

    .line 318
    invoke-virtual {v3, v1}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v1}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 320
    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "OldSettings_3"

    aput-object v4, v3, v2

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_6d} :catch_6e

    return-object v1

    :catch_6e
    move-exception v1

    .line 327
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ta/a/e/h;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_74
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    monitor-exit p0

    return-object v0

    .line 99
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->s()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
