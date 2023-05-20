.class public final Lcom/xiaomi/push/fh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/fh$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static a:Lcom/xiaomi/push/fh$a;

.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/xiaomi/push/service/XMJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/fh;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/push/fh;->a:I

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 2

    const-class v0, Lcom/xiaomi/push/fh;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    const-string v1, "[Alarm] stop alarm."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;

    invoke-interface {v1}, Lcom/xiaomi/push/fh$a;->a()V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(J)V
    .registers 3

    sget-object v0, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/fh$a;->a(J)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 10

    const-string v0, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Lcom/xiaomi/push/fi;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/fi;-><init>(Landroid/content/Context;)V

    :goto_17
    sput-object v0, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;

    goto/16 :goto_d3

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x1

    if-eqz v3, :cond_7d

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_7f

    move v5, v2

    :goto_32
    if-ge v2, v3, :cond_99

    :try_start_34
    aget-object v6, v1, v2

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    sget-object v7, Lcom/xiaomi/push/fh;->a:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_46} :catch_7b

    if-eqz v7, :cond_4a

    :goto_48
    move v5, v4

    goto :goto_61

    :cond_4a
    :try_start_4a
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/xiaomi/push/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/push/fh;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5e} :catch_61

    if-eqz v7, :cond_61

    goto :goto_48

    :catch_61
    :cond_61
    :goto_61
    if-ne v5, v4, :cond_64

    goto :goto_99

    :cond_64
    :try_start_64
    sget-object v7, Lcom/xiaomi/push/fh;->a:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_74} :catch_7b

    if-eqz v6, :cond_78

    move v5, v4

    goto :goto_99

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :catch_7b
    move-exception v1

    goto :goto_81

    :cond_7d
    move v5, v2

    goto :goto_99

    :catch_7f
    move-exception v1

    move v5, v2

    :goto_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check service err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_99
    :goto_99
    if-nez v5, :cond_c8

    invoke-static {p0}, Lcom/xiaomi/push/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a2

    goto :goto_c8

    :cond_a2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should export service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/push/fh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in AndroidManifest.xml file"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c8
    :goto_c8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    new-instance v0, Lcom/xiaomi/push/fi;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/fi;-><init>(Landroid/content/Context;)V

    goto/16 :goto_17

    :goto_d3
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)V
    .registers 6

    const-class v0, Lcom/xiaomi/push/fh;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/xiaomi/push/fh;->a:I

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1a

    if-ne p1, v3, :cond_17

    sput v3, Lcom/xiaomi/push/fh;->a:I

    goto :goto_1a

    :cond_17
    const/4 p1, 0x0

    sput p1, Lcom/xiaomi/push/fh;->a:I

    :cond_1a
    :goto_1a
    sget p1, Lcom/xiaomi/push/fh;->a:I

    if-eq v1, p1, :cond_2c

    sget p1, Lcom/xiaomi/push/fh;->a:I

    if-ne p1, v3, :cond_2c

    invoke-static {}, Lcom/xiaomi/push/fh;->a()V

    new-instance p1, Lcom/xiaomi/push/fk;

    invoke-direct {p1, p0}, Lcom/xiaomi/push/fk;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .registers 4

    const-class v0, Lcom/xiaomi/push/fh;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;

    if-nez v1, :cond_e

    const-string p0, "timer is not initialized"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2e

    monitor-exit v0

    return-void

    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Alarm] register alarm. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;

    invoke-interface {v1, p0}, Lcom/xiaomi/push/fh$a;->a(Z)V
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2e

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()Z
    .registers 2

    const-class v0, Lcom/xiaomi/push/fh;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_a
    :try_start_a
    sget-object v1, Lcom/xiaomi/push/fh;->a:Lcom/xiaomi/push/fh$a;

    invoke-interface {v1}, Lcom/xiaomi/push/fh$a;->a()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method
