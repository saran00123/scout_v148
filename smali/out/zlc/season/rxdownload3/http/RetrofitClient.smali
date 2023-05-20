.class public final Lzlc/season/rxdownload3/http/RetrofitClient;
.super Ljava/lang/Object;
.source "RetrofitClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lzlc/season/rxdownload3/http/RetrofitClient;",
        "",
        "()V",
        "FAKE_BASE_URL",
        "",
        "okHttpClientFactory",
        "Lzlc/season/rxdownload3/http/OkHttpClientFactory;",
        "get",
        "Lretrofit2/Retrofit;",
        "baseUrl",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final FAKE_BASE_URL:Ljava/lang/String; = "http://www.example.com"

.field public static final INSTANCE:Lzlc/season/rxdownload3/http/RetrofitClient;

.field private static final okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lzlc/season/rxdownload3/http/RetrofitClient;

    invoke-direct {v0}, Lzlc/season/rxdownload3/http/RetrofitClient;-><init>()V

    sput-object v0, Lzlc/season/rxdownload3/http/RetrofitClient;->INSTANCE:Lzlc/season/rxdownload3/http/RetrofitClient;

    const-string v0, "http://www.example.com"

    .line 10
    sput-object v0, Lzlc/season/rxdownload3/http/RetrofitClient;->FAKE_BASE_URL:Ljava/lang/String;

    .line 11
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getOkHttpClientFactory$rxdownload3_release()Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/http/RetrofitClient;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic get$default(Lzlc/season/rxdownload3/http/RetrofitClient;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Retrofit;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 13
    sget-object p1, Lzlc/season/rxdownload3/http/RetrofitClient;->FAKE_BASE_URL:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/http/RetrofitClient;->get(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lretrofit2/Retrofit;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 16
    sget-object v0, Lzlc/season/rxdownload3/http/RetrofitClient;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    invoke-interface {v0}, Lzlc/season/rxdownload3/http/OkHttpClientFactory;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 17
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    check-cast v0, Lretrofit2/Converter$Factory;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 18
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    check-cast v0, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-string v0, "Retrofit.Builder()\n     \u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
