.class final Lzlc/season/rxdownload3/core/RemoteMissionBox$stopAll$1;
.super Ljava/lang/Object;
.source "RemoteMissionBox.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RemoteMissionBox;->stopAll()Lio/reactivex/Maybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "emitter",
        "Lio/reactivex/MaybeEmitter;",
        "",
        "kotlin.jvm.PlatformType",
        "subscribe"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RemoteMissionBox;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$stopAll$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/MaybeEmitter;)V
    .registers 4
    .param p1    # Lio/reactivex/MaybeEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeEmitter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$stopAll$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;

    new-instance v1, Lzlc/season/rxdownload3/core/RemoteMissionBox$stopAll$1$1;

    invoke-direct {v1, p1}, Lzlc/season/rxdownload3/core/RemoteMissionBox$stopAll$1$1;-><init>(Lio/reactivex/MaybeEmitter;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lzlc/season/rxdownload3/core/RemoteMissionBox;->access$startBindServiceAndDo(Lzlc/season/rxdownload3/core/RemoteMissionBox;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
