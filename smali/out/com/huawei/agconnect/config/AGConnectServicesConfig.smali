.class public abstract Lcom/huawei/agconnect/config/AGConnectServicesConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/agconnect/AGConnectOptions;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/agconnect/config/AGConnectServicesConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCES_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, v0

    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object p0

    return-object p0
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;
    .registers 4

    sget-object v0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    if-nez v1, :cond_17

    new-instance v1, Lcom/huawei/agconnect/config/a/c;

    invoke-direct {v1, p0, p1}, Lcom/huawei/agconnect/config/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method


# virtual methods
.method public abstract overlayWith(Lcom/huawei/agconnect/config/LazyInputStream;)V
.end method

.method public abstract overlayWith(Ljava/io/InputStream;)V
.end method

.method public abstract setParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRoutePolicy(Lcom/huawei/agconnect/AGCRoutePolicy;)V
.end method
