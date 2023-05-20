.class final Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$3;
.super Ljava/lang/Object;
.source "RangeDownload.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RangeDownload;->rangeDownload(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)Lio/reactivex/Flowable;
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
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
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
.field final synthetic this$0:Lzlc/season/rxdownload3/core/RangeDownload;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RangeDownload;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$3;->this$0:Lzlc/season/rxdownload3/core/RangeDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;)Lio/reactivex/Maybe;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lzlc/season/rxdownload3/http/HttpCore;->INSTANCE:Lzlc/season/rxdownload3/http/HttpCore;

    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$3;->this$0:Lzlc/season/rxdownload3/core/RangeDownload;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RangeDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lzlc/season/rxdownload3/http/HttpCore;->download(Lzlc/season/rxdownload3/core/RealMission;Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$3;->apply(Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
