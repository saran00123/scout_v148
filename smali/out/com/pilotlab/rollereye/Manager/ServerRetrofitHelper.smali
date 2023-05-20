.class public Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;
.super Ljava/lang/Object;
.source "ServerRetrofitHelper.java"


# instance fields
.field private okHttpServerClient:Lokhttp3/OkHttpClient;

.field private serviceAPI:Lcom/pilotlab/rollereye/Api/ServerServiceApi;

.field private timeOut:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1e

    .line 23
    iput-wide v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->timeOut:J

    .line 26
    const-class v0, Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    sget-object v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->baseURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->onCreate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    iput-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    return-void
.end method

.method private initServerOkhttpClient()Lokhttp3/OkHttpClient;
    .registers 5

    .line 59
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-wide v1, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->timeOut:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->timeOut:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->timeOut:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Manager/TokenInterceptor;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Manager/TokenInterceptor;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/pilotlab/rollereye/Common/ServerConstent;->createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper$1;-><init>(Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;)V

    .line 65
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->okHttpServerClient:Lokhttp3/OkHttpClient;

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->okHttpServerClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private onCreate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
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

    .line 40
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 41
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 42
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 43
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 44
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->getServerOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getServerOkHttpClient()Lokhttp3/OkHttpClient;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->okHttpServerClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_a

    .line 53
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->initServerOkhttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->okHttpServerClient:Lokhttp3/OkHttpClient;

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->okHttpServerClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    if-nez v0, :cond_18

    .line 32
    const-class v0, Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    monitor-enter v0

    .line 33
    :try_start_7
    const-class v1, Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    sget-object v2, Lcom/pilotlab/rollereye/Common/ServerConstent;->baseURL:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->onCreate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    iput-object v1, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    .line 34
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 36
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->serviceAPI:Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    return-object v0
.end method
