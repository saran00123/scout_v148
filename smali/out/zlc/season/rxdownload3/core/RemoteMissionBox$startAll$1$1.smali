.class final Lzlc/season/rxdownload3/core/RemoteMissionBox$startAll$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoteMissionBox.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RemoteMissionBox$startAll$1;->subscribe(Lio/reactivex/MaybeEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;",
        "Lzlc/season/rxdownload3/core/DownloadService;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/MaybeEmitter;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeEmitter;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startAll$1$1;->$emitter:Lio/reactivex/MaybeEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 21
    check-cast p1, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RemoteMissionBox$startAll$1$1;->invoke(Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;)V
    .registers 6
    .param p1    # Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lzlc/season/rxdownload3/core/RemoteMissionBox$SuccessCallbackImpl;

    iget-object v1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startAll$1$1;->$emitter:Lio/reactivex/MaybeEmitter;

    const-string v2, "emitter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lzlc/season/rxdownload3/core/RemoteMissionBox$SuccessCallbackImpl;-><init>(Lio/reactivex/MaybeEmitter;)V

    check-cast v0, Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;

    new-instance v1, Lzlc/season/rxdownload3/core/RemoteMissionBox$ErrorCallbackImpl;

    iget-object v3, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startAll$1$1;->$emitter:Lio/reactivex/MaybeEmitter;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lzlc/season/rxdownload3/core/RemoteMissionBox$ErrorCallbackImpl;-><init>(Lio/reactivex/MaybeEmitter;)V

    check-cast v1, Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;

    invoke-virtual {p1, v0, v1}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->startAll(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    return-void
.end method
