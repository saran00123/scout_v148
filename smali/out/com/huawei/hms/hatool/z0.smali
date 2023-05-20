.class public Lcom/huawei/hms/hatool/z0;
.super Lcom/huawei/hms/hatool/f;
.source ""


# direct methods
.method public static c()Ljava/lang/String;
    .registers 6

    const-string v0, "hmsSdk"

    const-string v1, ""

    const-string v2, "com.huawei.android.os.BuildEx"

    :try_start_6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_a} :catch_36
    .catch Landroid/util/AndroidRuntimeException; {:try_start_6 .. :try_end_a} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_a} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_a} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_a} :catch_22

    const-string v3, "getUDID"

    const/4 v4, 0x0

    :try_start_d
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1c} :catch_36
    .catch Landroid/util/AndroidRuntimeException; {:try_start_d .. :try_end_1c} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1c} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_1c} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1c} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_1c} :catch_22

    :try_start_1c
    const-string v1, "getUDID success"

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_21} :catch_37
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1c .. :try_end_21} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_21} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_21} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_21} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_21} :catch_23

    goto :goto_3c

    :catch_22
    move-object v2, v1

    :catch_23
    const-string v1, "getUDID method invoke failed : InvocationTargetException"

    goto :goto_39

    :catch_26
    move-object v2, v1

    :catch_27
    const-string v1, "getUDID method invoke failed : Illegal ArgumentException"

    goto :goto_39

    :catch_2a
    move-object v2, v1

    :catch_2b
    const-string v1, "getUDID method invoke failed : Illegal AccessException"

    goto :goto_39

    :catch_2e
    move-object v2, v1

    :catch_2f
    const-string v1, "getUDID method invoke failed : NoSuchMethodException"

    goto :goto_39

    :catch_32
    move-object v2, v1

    :catch_33
    const-string v1, "getUDID getudid failed, RuntimeException is AndroidRuntimeException"

    goto :goto_39

    :catch_36
    move-object v2, v1

    :catch_37
    const-string v1, "getUDID method invoke failed"

    :goto_39
    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-object v2
.end method

.method public static e(Landroid/content/Context;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/huawei/hms/hatool/p0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_17

    const-string p0, "hmsSdk"

    const-string v0, "getMccAndMnc() Pair value is empty"

    invoke-static {p0, v0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_17
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_27

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_27
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_34

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_34
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "null"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_63

    :cond_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_5d

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_5d
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_63
    :goto_63
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds",
            "MissingPermission"
        }
    .end annotation

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/huawei/hms/hatool/p0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    :try_start_b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string p0, "hmsSdk"

    const-string v0, "getDeviceID Incorrect permissions!"

    invoke-static {p0, v0}, Lcom/huawei/hms/hatool/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-object v1
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "hmsSdk"

    const-string v1, "getSerial : is executed."

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    if-nez p0, :cond_c

    return-object v1

    :cond_c
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/huawei/hms/hatool/p0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    return-object v1

    :cond_15
    :try_start_15
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p0, v2, :cond_25

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    const-string p0, "getSerial() Incorrect permissions!"

    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-object v1
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    invoke-static {p0}, Lcom/huawei/hms/hatool/z0;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
