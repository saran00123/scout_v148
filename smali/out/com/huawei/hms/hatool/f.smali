.class public abstract Lcom/huawei/hms/hatool/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hatool/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "hmsSdk"

    if-eqz p0, :cond_5c

    if-nez p2, :cond_11

    if-nez p3, :cond_9

    goto :goto_17

    :cond_9
    new-instance p0, Lcom/huawei/hms/hatool/f$a;

    const-string p1, "paramsType is null, but params is not null"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hatool/f$a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    if-eqz p3, :cond_54

    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_33

    :goto_17
    const/4 v1, 0x0

    :try_start_18
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_1c} :catch_2d

    :try_start_1c
    invoke-virtual {p0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_20} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_20} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_20} :catch_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_20} :catch_2d

    return-object p0

    :catch_21
    :try_start_21
    const-string p0, "invokeStaticFun(): Invocation Target Exception!"

    :goto_23
    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_27
    const-string p0, "invokeStaticFun(): Illegal Argument!"

    goto :goto_23

    :catch_2a
    const-string p0, "invokeStaticFun(): method invoke Exception!"
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_23

    :catch_2d
    const-string p0, "invokeStaticFun(): cls.getMethod(),No Such Method !"

    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-object v1

    :cond_33
    new-instance p0, Lcom/huawei/hms/hatool/f$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "paramsType len:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should equal params.len:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/hatool/f$a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    new-instance p0, Lcom/huawei/hms/hatool/f$a;

    const-string p1, "paramsType or params should be same"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hatool/f$a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    new-instance p0, Lcom/huawei/hms/hatool/f$a;

    const-string p1, "class is null in invokeStaticFun"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hatool/f$a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "hmsSdk"

    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/huawei/hms/hatool/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_a} :catch_e
    .catch Lcom/huawei/hms/hatool/f$a; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const-string p0, "invokeStaticFun(): Static function call Exception "

    goto :goto_10

    :catch_e
    const-string p0, "invokeStaticFun() Not found class!"

    :goto_10
    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.build.version.emui"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0, p0, p1}, Lcom/huawei/hms/hatool/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "com.huawei.android.os.SystemPropertiesEx"

    invoke-static {v0, p0, p1}, Lcom/huawei/hms/hatool/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "get"

    invoke-static {p0, p1, v1, v0}, Lcom/huawei/hms/hatool/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1e

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_1e
    return-object p2
.end method

.method public static b()Ljava/lang/String;
    .registers 4

    const-string v0, "com.huawei.android.os.SystemPropertiesEx"

    const-string v1, "ro.huawei.build.display.id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/hatool/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemPropertiesEx: get rom_ver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hmsSdk"

    invoke-static {v2, v1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperties: get rom_ver: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "Unknown"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_36

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_36

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "CHANNEL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_28} :catch_2f

    const/16 v2, 0x100

    if-le v1, v2, :cond_2d

    goto :goto_36

    :cond_2d
    move-object v0, p0

    goto :goto_36

    :catch_2f
    const-string p0, "hmsSdk"

    const-string v1, "getChannel(): The packageName is not correct!"

    invoke-static {p0, v1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/huawei/hms/hatool/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x4000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    const-string p0, "hmsSdk"

    const-string v1, "getVersion(): The package name is not correct!"

    invoke-static {p0, v1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-object v0
.end method
