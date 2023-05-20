.class public final Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1$1;
.super Ljava/lang/Object;
.source "RemoteMissionBox.kt"

# interfaces
.implements Lzlc/season/rxdownload3/core/DownloadService$FileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1;->invoke(Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "zlc/season/rxdownload3/core/RemoteMissionBox$file$1$1$1",
        "Lzlc/season/rxdownload3/core/DownloadService$FileCallback;",
        "apply",
        "",
        "file",
        "Ljava/io/File;",
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
.field final synthetic this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;)V
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1;

    iget-object v0, v0, Lzlc/season/rxdownload3/core/RemoteMissionBox$file$1$1;->$emitter:Lio/reactivex/MaybeEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
