.class public Lcom/huawei/agconnect/config/a/a;
.super Lcom/huawei/agconnect/AGConnectApp;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/agconnect/AGConnectApp;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/a/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/a/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/huawei/agconnect/AGConnectApp;-><init>()V

    invoke-static {p1, p2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    return-void
.end method

.method public static a()Lcom/huawei/agconnect/AGConnectApp;
    .registers 1

    sget-object v0, Lcom/huawei/agconnect/config/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/agconnect/config/a/a;->a(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/huawei/agconnect/AGConnectApp;
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

    sput-object v0, Lcom/huawei/agconnect/config/a/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/huawei/agconnect/config/a/a;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/huawei/agconnect/config/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/huawei/agconnect/config/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    sget-object v1, Lcom/huawei/agconnect/config/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/agconnect/AGConnectApp;

    if-nez v1, :cond_1d

    new-instance v2, Lcom/huawei/agconnect/config/a/a;

    invoke-direct {v2, p0, p1}, Lcom/huawei/agconnect/config/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/huawei/agconnect/config/a/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName can not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;
    .registers 3

    sget-object v0, Lcom/huawei/agconnect/config/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/agconnect/config/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/agconnect/AGConnectApp;

    if-eqz p0, :cond_f

    monitor-exit v0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "you should call AGConnectApp.initialize first"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method


# virtual methods
.method public setApiKey(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/api_key"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/app_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/client_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/client_secret"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCpId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/cp_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomAuthProvider(Lcom/huawei/agconnect/CustomAuthProvider;)V
    .registers 3

    invoke-static {}, Lcom/huawei/agconnect/AGConnectInstance;->getInstance()Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v0

    check-cast v0, Lcom/huawei/agconnect/core/a/a;

    invoke-virtual {v0, p1}, Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/CustomAuthProvider;)V

    return-void
.end method

.method public setCustomCredentialsProvider(Lcom/huawei/agconnect/CustomCredentialsProvider;)V
    .registers 3

    invoke-static {}, Lcom/huawei/agconnect/AGConnectInstance;->getInstance()Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v0

    check-cast v0, Lcom/huawei/agconnect/core/a/a;

    invoke-virtual {v0, p1}, Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/CustomCredentialsProvider;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path can not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/product_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
