.class public Lcom/ta/utdid2/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 35
    invoke-static {}, Lcom/ta/utdid2/a/a/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    if-eqz p0, :cond_1e

    .line 38
    :try_start_9
    invoke-static {p0}, Lcom/ta/a/b/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "phone"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1e

    .line 42
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    move-object v1, v0

    .line 51
    :catch_1e
    :cond_1e
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 52
    invoke-static {}, Lcom/ta/utdid2/a/a/e;->m()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_28
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 56
    invoke-static {p0}, Lcom/ta/utdid2/a/a/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_32
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 59
    invoke-static {}, Lcom/ta/utdid2/a/a/e;->l()Ljava/lang/String;

    move-result-object v1

    :cond_3c
    return-object v1
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 67
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_3b

    .line 69
    :try_start_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "a5f5faddde9e9f02"

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "8e17f7422b35fbea"

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "ece1e988e8bf71f2"

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "9e3ecdf2be3b9a69"

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "0000000000000000"

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_38} :catch_3c

    if-eqz v1, :cond_3c

    :cond_3a
    return-object v0

    :catch_3b
    move-object p0, v0

    :catch_3c
    :cond_3c
    return-object p0
.end method

.method public static l()Ljava/lang/String;
    .registers 7

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-int v1, v1

    .line 19
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 20
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 21
    invoke-static {v0}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v0

    .line 22
    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v1

    .line 23
    invoke-static {v2}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v2

    .line 24
    invoke-static {v3}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v3

    const/16 v4, 0x10

    .line 25
    new-array v4, v4, [B

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 26
    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-static {v1, v6, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    .line 28
    invoke-static {v2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    .line 29
    invoke-static {v3, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    .line 30
    invoke-static {v4, v0}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const-string v1, "ro.aliyun.clouduuid"

    .line 88
    invoke-static {v1, v0}, Lcom/ta/utdid2/a/a/g;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "ro.sys.aliyun.clouduuid"

    .line 91
    invoke-static {v1, v0}, Lcom/ta/utdid2/a/a/g;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 95
    invoke-static {}, Lcom/ta/utdid2/a/a/e;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    return-object v1
.end method

.method private static n()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "com.yunos.baseservice.clouduuid.CloudUUID"

    .line 104
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCloudUUID"

    const/4 v2, 0x0

    .line 105
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1b

    :catch_19
    const-string v0, ""

    :goto_1b
    return-object v0
.end method
