.class public Lcom/heytap/mcssdk/f/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.nearme.mcs"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 3

    const-string v0, "com.nearme.mcs"

    invoke-static {v0}, Lcom/heytap/mcssdk/f/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/mcssdk/f/a;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1a

    :cond_18
    const-string v1, ""

    :goto_1a
    return-object v1
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    :try_start_6
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    new-array p0, v0, [B

    return-object p0
.end method

.method public static a([B)[B
    .registers 6

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    array-length v0, p0

    goto :goto_a

    :cond_7
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1a

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    :cond_1a
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    :try_start_6
    invoke-static {}, Lcom/heytap/mcssdk/f/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/heytap/mcssdk/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desDecrypt-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    :cond_28
    const-string p0, ""

    :goto_2a
    return-object p0
.end method
