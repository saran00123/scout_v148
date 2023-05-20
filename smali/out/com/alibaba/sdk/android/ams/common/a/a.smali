.class public Lcom/alibaba/sdk/android/ams/common/a/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/alibaba/sdk/android/ams/common/a;

.field static volatile b:Landroid/content/Context;

.field static volatile c:Landroid/app/Application;

.field static volatile d:Z

.field private static final e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/ams/common/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "AMS"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a;->d:Lcom/alibaba/sdk/android/ams/common/a;

    sput-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->a:Lcom/alibaba/sdk/android/ams/common/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/ams/common/a/a;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->f:Ljava/util/Map;

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->f:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a;->d:Lcom/alibaba/sdk/android/ams/common/a;

    const-string v2, "mpush-api.aliyun.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->f:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a;->c:Lcom/alibaba/sdk/android/ams/common/a;

    const-string v2, "manager.pre.channel.aliyun.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->f:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a;->b:Lcom/alibaba/sdk/android/ams/common/a;

    const-string v2, "manager.channel.tbsandbox.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->f:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a;->a:Lcom/alibaba/sdk/android/ams/common/a;

    const-string v2, "10.101.108.10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/ams/common/a;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->a:Lcom/alibaba/sdk/android/ams/common/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_46

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta data name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Landroid/app/Application;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->c:Landroid/app/Application;

    return-object v0
.end method

.method public static c()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static d()Z
    .registers 1

    sget-boolean v0, Lcom/alibaba/sdk/android/ams/common/a/a;->d:Z

    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->a()Lcom/alibaba/sdk/android/ams/common/a;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a/a;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    :cond_e
    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a;->d:Lcom/alibaba/sdk/android/ams/common/a;

    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Environment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->a()Lcom/alibaba/sdk/android/ams/common/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/ams/common/a;->d:Lcom/alibaba/sdk/android/ams/common/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " instead!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    :cond_39
    sget-object v1, Lcom/alibaba/sdk/android/ams/common/a/a;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
