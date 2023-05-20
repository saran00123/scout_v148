.class public final Lzlc/season/rxdownload3/http/HttpCore;
.super Ljava/lang/Object;
.source "HttpCore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpCore.kt\nzlc/season/rxdownload3/http/HttpCore\n*L\n1#1,40:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008J$\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lzlc/season/rxdownload3/http/HttpCore;",
        "",
        "()V",
        "api",
        "Lzlc/season/rxdownload3/http/RetrofitApi;",
        "checkUrl",
        "Lio/reactivex/Maybe;",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "download",
        "Lretrofit2/Response;",
        "Lokhttp3/ResponseBody;",
        "range",
        "",
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
.field public static final INSTANCE:Lzlc/season/rxdownload3/http/HttpCore;

.field private static final api:Lzlc/season/rxdownload3/http/RetrofitApi;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lzlc/season/rxdownload3/http/HttpCore;

    invoke-direct {v0}, Lzlc/season/rxdownload3/http/HttpCore;-><init>()V

    sput-object v0, Lzlc/season/rxdownload3/http/HttpCore;->INSTANCE:Lzlc/season/rxdownload3/http/HttpCore;

    .line 11
    sget-object v0, Lzlc/season/rxdownload3/http/RetrofitClient;->INSTANCE:Lzlc/season/rxdownload3/http/RetrofitClient;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lzlc/season/rxdownload3/http/RetrofitClient;->get$default(Lzlc/season/rxdownload3/http/RetrofitClient;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lzlc/season/rxdownload3/http/RetrofitApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RetrofitClient.get().cre\u2026(RetrofitApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lzlc/season/rxdownload3/http/RetrofitApi;

    sput-object v0, Lzlc/season/rxdownload3/http/HttpCore;->api:Lzlc/season/rxdownload3/http/RetrofitApi;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic download$default(Lzlc/season/rxdownload3/http/HttpCore;Lzlc/season/rxdownload3/core/RealMission;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Maybe;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    .line 27
    :cond_6
    invoke-virtual {p0, p1, p2}, Lzlc/season/rxdownload3/http/HttpCore;->download(Lzlc/season/rxdownload3/core/RealMission;Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkUrl(Lzlc/season/rxdownload3/core/RealMission;)Lio/reactivex/Maybe;
    .registers 6
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/RealMission;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getUseHeadMethod$rxdownload3_release()Z

    move-result v0

    const-string v1, "bytes=0-"

    const-string v2, "Range"

    if-eqz v0, :cond_29

    .line 15
    sget-object v0, Lzlc/season/rxdownload3/http/HttpCore;->api:Lzlc/season/rxdownload3/http/RetrofitApi;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v2

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/Mission;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lzlc/season/rxdownload3/http/RetrofitApi;->checkByHead(Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object v0

    goto :goto_40

    .line 17
    :cond_29
    sget-object v0, Lzlc/season/rxdownload3/http/HttpCore;->api:Lzlc/season/rxdownload3/http/RetrofitApi;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v2

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/Mission;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lzlc/season/rxdownload3/http/RetrofitApi;->checkByGet(Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 18
    :goto_40
    new-instance v1, Lzlc/season/rxdownload3/http/HttpCore$checkUrl$1;

    invoke-direct {v1, p1}, Lzlc/season/rxdownload3/http/HttpCore$checkUrl$1;-><init>(Lzlc/season/rxdownload3/core/RealMission;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    const-string v0, "if (DownloadConfig.useHe\u2026Maybe.just(ANY)\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final download(Lzlc/season/rxdownload3/core/RealMission;Ljava/lang/String;)Lio/reactivex/Maybe;
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/RealMission;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1d

    .line 29
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    goto :goto_28

    .line 31
    :cond_1d
    new-instance v0, Lkotlin/Pair;

    const-string v1, "Range"

    invoke-direct {v0, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 33
    :goto_28
    sget-object v0, Lzlc/season/rxdownload3/http/HttpCore;->api:Lzlc/season/rxdownload3/http/RetrofitApi;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lzlc/season/rxdownload3/http/RetrofitApi;->download(Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 34
    sget-object p2, Lzlc/season/rxdownload3/http/HttpCore$download$1;->INSTANCE:Lzlc/season/rxdownload3/http/HttpCore$download$1;

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object p1

    const-string p2, "api.download(header, mis\u2026      }\n                }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
