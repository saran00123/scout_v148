.class public Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;
.super Ljava/lang/Object;
.source "RollerEyeRetrofitHelper.java"


# instance fields
.field private okHttpRollerEyeClient:Lokhttp3/OkHttpClient;

.field private serviceAPI:Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    sget-object v1, Lcom/pilotlab/rollereye/Common/RollerEyeConstent;->baseURL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->onCreate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    iput-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    return-void
.end method

.method private initRollerEyeOkhttpClient()Lokhttp3/OkHttpClient;
    .registers 5

    .line 58
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 59
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->okHttpRollerEyeClient:Lokhttp3/OkHttpClient;

    .line 64
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->okHttpRollerEyeClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public getRollerEyeOkHttpClient()Lokhttp3/OkHttpClient;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->okHttpRollerEyeClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_a

    .line 50
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->initRollerEyeOkhttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->okHttpRollerEyeClient:Lokhttp3/OkHttpClient;

    .line 52
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->okHttpRollerEyeClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getServiceAPI()Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;
    .registers 4

    .line 27
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    if-nez v0, :cond_18

    .line 28
    const-class v0, Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    monitor-enter v0

    .line 29
    :try_start_7
    const-class v1, Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    sget-object v2, Lcom/pilotlab/rollereye/Common/RollerEyeConstent;->baseURL:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->onCreate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    iput-object v1, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    .line 30
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 32
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    return-object v0
.end method

.method public onCreate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 37
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 38
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 39
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 40
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 41
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->getRollerEyeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    .line 43
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
