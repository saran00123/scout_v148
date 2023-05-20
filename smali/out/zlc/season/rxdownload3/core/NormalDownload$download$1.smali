.class final Lzlc/season/rxdownload3/core/NormalDownload$download$1;
.super Ljava/lang/Object;
.source "NormalDownload.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/NormalDownload;->download()Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/MaybeSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Maybe;",
        "Lretrofit2/Response;",
        "Lokhttp3/ResponseBody;",
        "it",
        "",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/core/NormalDownload;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/NormalDownload;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalDownload$download$1;->this$0:Lzlc/season/rxdownload3/core/NormalDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lio/reactivex/Maybe;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lzlc/season/rxdownload3/http/HttpCore;->INSTANCE:Lzlc/season/rxdownload3/http/HttpCore;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload$download$1;->this$0:Lzlc/season/rxdownload3/core/NormalDownload;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/NormalDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lzlc/season/rxdownload3/http/HttpCore;->download$default(Lzlc/season/rxdownload3/http/HttpCore;Lzlc/season/rxdownload3/core/RealMission;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/NormalDownload$download$1;->apply(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
