.class public Lcom/xiaomi/push/gl;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;)I
    .registers 5

    instance-of v0, p0, Lcom/xiaomi/push/gu;

    if-eqz v0, :cond_11

    move-object v1, p0

    check-cast v1, Lcom/xiaomi/push/gu;

    invoke-virtual {v1}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/xiaomi/push/gu;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_23
    instance-of v2, p0, Ljava/net/SocketTimeoutException;

    const/16 v3, 0x69

    if-eqz v2, :cond_2a

    return v3

    :cond_2a
    instance-of v2, p0, Ljava/net/SocketException;

    if-eqz v2, :cond_88

    const-string p0, "Network is unreachable"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3a

    const/16 p0, 0x66

    return p0

    :cond_3a
    const-string p0, "Connection refused"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_45

    const/16 p0, 0x67

    return p0

    :cond_45
    const-string p0, "Connection timed out"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_4e

    return v3

    :cond_4e
    const-string p0, "EACCES (Permission denied)"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_59

    const/16 p0, 0x65

    return p0

    :cond_59
    const-string p0, "Connection reset by peer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_64

    const/16 p0, 0x6d

    return p0

    :cond_64
    const-string p0, "Broken pipe"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_6f

    const/16 p0, 0x6e

    return p0

    :cond_6f
    const-string p0, "No route to host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_7a

    const/16 p0, 0x68

    return p0

    :cond_7a
    const-string p0, "EINVAL (Invalid argument)"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_85

    const/16 p0, 0x6a

    return p0

    :cond_85
    const/16 p0, 0xc7

    return p0

    :cond_88
    instance-of p0, p0, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_8f

    const/16 p0, 0x6b

    return p0

    :cond_8f
    if-eqz v0, :cond_94

    const/16 p0, 0x18f

    return p0

    :cond_94
    const/4 p0, 0x0

    return p0
.end method
