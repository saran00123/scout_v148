.class public Lcom/xiaomi/push/do;
.super Ljava/lang/Object;


# direct methods
.method private static a([B)V
    .registers 3

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    const/16 v1, 0x63

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    const/16 v1, 0x64

    aput-byte v1, p0, v0

    :cond_e
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 7

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->aY:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_26

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_26

    :cond_1f
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/ai;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_26

    const/4 v2, 0x1

    :cond_26
    return v2
.end method

.method public static a(Ljava/lang/String;[B)[B
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p0

    :try_start_4
    invoke-static {p0}, Lcom/xiaomi/push/do;->a([B)V

    invoke-static {p0, p1}, Lcom/xiaomi/push/h;->a([B[B)[B

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public static b(Ljava/lang/String;[B)[B
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p0

    :try_start_4
    invoke-static {p0}, Lcom/xiaomi/push/do;->a([B)V

    invoke-static {p0, p1}, Lcom/xiaomi/push/h;->b([B[B)[B

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method
