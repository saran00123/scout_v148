.class final Lzlc/season/rxdownload3/core/RangeDownload$download$3;
.super Ljava/lang/Object;
.source "RangeDownload.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RangeDownload;->download()Lio/reactivex/Flowable;
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
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lzlc/season/rxdownload3/core/Downloading;",
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

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeDownload$download$3;->this$0:Lzlc/season/rxdownload3/core/RangeDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RangeDownload$download$3;->apply(Ljava/lang/Object;)Lzlc/season/rxdownload3/core/Downloading;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lzlc/season/rxdownload3/core/Downloading;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance p1, Lzlc/season/rxdownload3/core/Downloading;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload$download$3;->this$0:Lzlc/season/rxdownload3/core/RangeDownload;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/RangeDownload;->access$getTmpFile$p(Lzlc/season/rxdownload3/core/RangeDownload;)Lzlc/season/rxdownload3/core/RangeTmpFile;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->currentStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v0

    invoke-direct {p1, v0}, Lzlc/season/rxdownload3/core/Downloading;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    return-object p1
.end method
