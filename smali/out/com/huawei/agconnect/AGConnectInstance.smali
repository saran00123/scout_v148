.class public abstract Lcom/huawei/agconnect/AGConnectInstance;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildInstance(Lcom/huawei/agconnect/AGConnectOptions;)Lcom/huawei/agconnect/AGConnectInstance;
    .registers 1

    invoke-static {p0}, Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/AGConnectOptions;)Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/huawei/agconnect/AGConnectInstance;
    .registers 1

    invoke-static {}, Lcom/huawei/agconnect/core/a/a;->a()Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectInstance;
    .registers 1

    invoke-static {p0}, Lcom/huawei/agconnect/core/a/a;->a(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/huawei/agconnect/AGConnectInstance;

    monitor-enter v0

    :try_start_3
    const-string v1, "AGConnectInstance"

    const-string v2, "AGConnectInstance#initialize"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/huawei/agconnect/core/a/a;->a(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/huawei/agconnect/AGConnectOptionsBuilder;)V
    .registers 5

    const-class v0, Lcom/huawei/agconnect/AGConnectInstance;

    monitor-enter v0

    :try_start_3
    const-string v1, "AGConnectInstance"

    const-string v2, "AGConnectInstance#initialize with options"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/huawei/agconnect/core/a/a;->a(Landroid/content/Context;Lcom/huawei/agconnect/AGConnectOptionsBuilder;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getOptions()Lcom/huawei/agconnect/AGConnectOptions;
.end method

.method public abstract getService(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)TT;"
        }
    .end annotation
.end method
