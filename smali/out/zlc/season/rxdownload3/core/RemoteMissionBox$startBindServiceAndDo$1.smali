.class public final Lzlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1;
.super Ljava/lang/Object;
.source "RemoteMissionBox.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RemoteMissionBox;->startBindServiceAndDo(Lkotlin/jvm/functions/Function1;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "zlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "binder",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RemoteMissionBox;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;

    iput-object p2, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;

    check-cast p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

    invoke-virtual {p1, p2}, Lzlc/season/rxdownload3/core/RemoteMissionBox;->setDownloadBinder(Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;)V

    .line 161
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;

    invoke-virtual {p2}, Lzlc/season/rxdownload3/core/RemoteMissionBox;->getDownloadBinder()Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

    move-result-object p2

    if-nez p2, :cond_1e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1e
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RemoteMissionBox$startBindServiceAndDo$1;->this$0:Lzlc/season/rxdownload3/core/RemoteMissionBox;

    const/4 v0, 0x0

    check-cast v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

    invoke-virtual {p1, v0}, Lzlc/season/rxdownload3/core/RemoteMissionBox;->setDownloadBinder(Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;)V

    return-void
.end method
