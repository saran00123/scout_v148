.class final Lzlc/season/rxdownload3/core/NormalDownload$download$2;
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
        "Lorg/reactivestreams/Publisher<",
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
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Flowable;",
        "Lzlc/season/rxdownload3/core/Status;",
        "it",
        "Lretrofit2/Response;",
        "Lokhttp3/ResponseBody;",
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

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalDownload$download$2;->this$0:Lzlc/season/rxdownload3/core/NormalDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lretrofit2/Response;)Lio/reactivex/Flowable;
    .registers 3
    .param p1    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lzlc/season/rxdownload3/core/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload$download$2;->this$0:Lzlc/season/rxdownload3/core/NormalDownload;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/NormalDownload;->access$getTargetFile$p(Lzlc/season/rxdownload3/core/NormalDownload;)Lzlc/season/rxdownload3/core/NormalTargetFile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/NormalTargetFile;->save(Lretrofit2/Response;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 10
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/NormalDownload$download$2;->apply(Lretrofit2/Response;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
