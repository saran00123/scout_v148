.class public final Lcom/vivo/push/cache/b;
.super Ljava/lang/Object;
.source "ConfigManagerFactory.java"


# static fields
.field private static volatile a:Lcom/vivo/push/cache/b;


# instance fields
.field private b:Lcom/vivo/push/cache/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/vivo/push/cache/b;
    .registers 2

    const-class v0, Lcom/vivo/push/cache/b;

    monitor-enter v0

    .line 19
    :try_start_3
    sget-object v1, Lcom/vivo/push/cache/b;->a:Lcom/vivo/push/cache/b;

    if-nez v1, :cond_e

    .line 20
    new-instance v1, Lcom/vivo/push/cache/b;

    invoke-direct {v1}, Lcom/vivo/push/cache/b;-><init>()V

    sput-object v1, Lcom/vivo/push/cache/b;->a:Lcom/vivo/push/cache/b;

    .line 22
    :cond_e
    sget-object v1, Lcom/vivo/push/cache/b;->a:Lcom/vivo/push/cache/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/vivo/push/cache/d;
    .registers 11

    const-string v0, "ConfigManagerFactory"

    .line 27
    iget-object v1, p0, Lcom/vivo/push/cache/b;->b:Lcom/vivo/push/cache/d;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    const/4 v1, 0x0

    .line 31
    :try_start_8
    invoke-static {p1}, Lcom/vivo/push/util/y;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "com.vivo.push.cache.ServerConfigManagerImpl"

    goto :goto_13

    :cond_11
    const-string v2, "com.vivo.push.cache.ClientConfigManagerImpl"

    .line 38
    :goto_13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x1

    .line 39
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "createConfig success is "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/push/cache/d;

    iput-object p1, p0, Lcom/vivo/push/cache/b;->b:Lcom/vivo/push/cache/d;

    .line 42
    iget-object p1, p0, Lcom/vivo/push/cache/b;->b:Lcom/vivo/push/cache/d;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_44} :catch_45

    return-object p1

    :catch_45
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "createConfig error"

    .line 45
    invoke-static {v0, v2, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
