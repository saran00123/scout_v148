.class public Lcom/huawei/hms/framework/common/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageUtils"

.field private static final VERSION:Ljava/lang/String; = "5.0.3.300"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 38
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    :goto_b
    const-string v0, ""

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_14

    return-object v0

    .line 46
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x4000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 47
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_20} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_20} :catch_21

    goto :goto_28

    :catch_21
    const-string p0, "PackageUtils"

    const-string v1, "Failed to get Package managers Package Info"

    .line 49
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_28
    return-object v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 60
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    :goto_b
    const-string v0, ""

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_14

    return-object v0

    .line 68
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x4000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 69
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_24} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_24} :catch_25

    goto :goto_2c

    :catch_25
    const-string p0, "PackageUtils"

    const-string v1, "Failed to get Package managers Package Info"

    .line 71
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2c
    return-object v0
.end method

.method private static getBundleFromApp(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    .line 83
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 85
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    :goto_d
    if-nez p0, :cond_10

    return-object v0

    .line 89
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_17

    return-object v0

    .line 95
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 97
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_35

    .line 98
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_29} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_29} :catch_2b

    move-object v0, p0

    goto :goto_35

    :catch_2b
    move-exception p0

    goto :goto_2e

    :catch_2d
    move-exception p0

    :goto_2e
    const-string v1, "PackageUtils"

    const-string v2, "NameNotFoundException:"

    .line 101
    invoke-static {v1, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    return-object v0
.end method

.method private static getBundleFromKit(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    .line 128
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getKitContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getKitContext()Landroid/content/Context;

    move-result-object p0

    :goto_b
    const-string v0, "PackageUtils"

    if-nez p0, :cond_17

    const-string p0, "the kitContext is null"

    .line 130
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    .line 133
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_25

    const-string p0, "the kit applicationInfo is null"

    .line 134
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    .line 137
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_2f

    .line 138
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_2f
    return-object p0
.end method

.method private static getBundleFromKitOrAPP(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    .line 169
    invoke-static {p0}, Lcom/huawei/hms/framework/common/PackageManagerCompat;->getBundleFromKit(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 170
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 171
    :cond_c
    invoke-static {p0}, Lcom/huawei/hms/framework/common/PackageManagerCompat;->getBundleFromApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public static getMetaDataFromApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 114
    invoke-static {p0}, Lcom/huawei/hms/framework/common/PackageManagerCompat;->getBundleFromApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p2
.end method

.method public static getMetaDataFromKit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/framework/common/PackageManagerCompat;->getBundleFromKit(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p2

    .line 154
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const-string p0, "PackageUtils"

    const-string p1, "the kit metaData is runtimeException"

    .line 156
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static getMetaDataFromKitOrApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 184
    invoke-static {p0}, Lcom/huawei/hms/framework/common/PackageManagerCompat;->getBundleFromKitOrAPP(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaDataMapFromKitOrApp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-static {p0}, Lcom/huawei/hms/framework/common/PackageManagerCompat;->getBundleFromKitOrAPP(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 197
    invoke-static {p0}, Lcom/huawei/hms/framework/common/PackageManagerCompat;->getBundleFromKitOrAPP(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_15

    .line 202
    :cond_28
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_3e
    return-object v0
.end method
