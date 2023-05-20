.class public Lcom/huawei/hms/framework/common/SecurityBase64Utils;
.super Ljava/lang/Object;
.source "SecurityBase64Utils.java"


# static fields
.field private static IS_AEGIS_BASE64_LIBRARY_LOADED:Z = false

.field private static final SAFE_BASE64_PATH:Ljava/lang/String; = "com.huawei.secure.android.common.util.SafeBase64"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCompatible(Ljava/lang/String;)Z
    .registers 3

    .line 56
    const-class v0, Lcom/huawei/hms/framework/common/SecurityBase64Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 61
    :cond_a
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 62
    const-class p0, Lcom/huawei/hms/framework/common/StringUtils;

    monitor-enter p0
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_18

    const/4 v0, 0x1

    .line 63
    :try_start_11
    sput-boolean v0, Lcom/huawei/hms/framework/common/SecurityBase64Utils;->IS_AEGIS_BASE64_LIBRARY_LOADED:Z

    .line 64
    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    return v1
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 3

    .line 44
    sget-boolean v0, Lcom/huawei/hms/framework/common/SecurityBase64Utils;->IS_AEGIS_BASE64_LIBRARY_LOADED:Z

    if-nez v0, :cond_16

    const-string v0, "com.huawei.secure.android.common.util.SafeBase64"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/SecurityBase64Utils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 48
    :cond_d
    :try_start_d
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const/4 p0, 0x0

    .line 50
    new-array p0, p0, [B

    return-object p0

    .line 45
    :cond_16
    :goto_16
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/util/SafeBase64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 3

    .line 26
    sget-boolean v0, Lcom/huawei/hms/framework/common/SecurityBase64Utils;->IS_AEGIS_BASE64_LIBRARY_LOADED:Z

    if-nez v0, :cond_14

    const-string v0, "com.huawei.secure.android.common.util.SafeBase64"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/SecurityBase64Utils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 30
    :cond_d
    :try_start_d
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_14
    :goto_14
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/util/SafeBase64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
