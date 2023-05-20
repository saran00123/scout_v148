.class final Lzlc/season/rxdownload3/core/RemoteMissionBox$ErrorCallbackImpl;
.super Ljava/lang/Object;
.source "RemoteMissionBox.kt"

# interfaces
.implements Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/core/RemoteMissionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorCallbackImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/RemoteMissionBox$ErrorCallbackImpl;",
        "Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;",
        "emitter",
        "Lio/reactivex/MaybeEmitter;",
        "",
        "(Lio/reactivex/MaybeEmitter;)V",
        "getEmitter",
        "()Lio/reactivex/MaybeEmitter;",
        "apply",
        "",
        "throwable",
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


# instance fields
.field private final emitter:Lio/reactivex/MaybeEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeEmitter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeEmitter;)V
    .registers 3
    .param p1    # Lio/reactivex/MaybeEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeEmitter<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$ErrorCallbackImpl;->emitter:Lio/reactivex/MaybeEmitter;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)V
    .registers 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$ErrorCallbackImpl;->emitter:Lio/reactivex/MaybeEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getEmitter()Lio/reactivex/MaybeEmitter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/MaybeEmitter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 176
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$ErrorCallbackImpl;->emitter:Lio/reactivex/MaybeEmitter;

    return-object v0
.end method
