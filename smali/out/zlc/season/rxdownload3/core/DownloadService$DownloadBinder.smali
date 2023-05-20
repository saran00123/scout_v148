.class public final Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;
.super Landroid/os/Binder;
.source "DownloadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/core/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DownloadBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J,\u0010\u0011\u001a\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00132\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ&\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\nJ.\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001c0\u001b2\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010 \u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010#\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010$\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010%\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010&\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006)"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;",
        "Landroid/os/Binder;",
        "(Lzlc/season/rxdownload3/core/DownloadService;)V",
        "clear",
        "",
        "mission",
        "Lzlc/season/rxdownload3/core/Mission;",
        "successCb",
        "Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;",
        "errorCb",
        "Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;",
        "clearAll",
        "create",
        "autoStart",
        "",
        "statusCallback",
        "Lzlc/season/rxdownload3/core/DownloadService$StatusCallback;",
        "createAll",
        "missions",
        "",
        "delete",
        "deleteFile",
        "deleteAll",
        "successCallback",
        "errorCallback",
        "extension",
        "type",
        "Ljava/lang/Class;",
        "Lzlc/season/rxdownload3/extension/Extension;",
        "file",
        "fileCallback",
        "Lzlc/season/rxdownload3/core/DownloadService$FileCallback;",
        "isExists",
        "boolCallback",
        "Lzlc/season/rxdownload3/core/DownloadService$BoolCallback;",
        "start",
        "startAll",
        "stop",
        "stopAll",
        "update",
        "newMission",
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
.field final synthetic this$0:Lzlc/season/rxdownload3/core/DownloadService;


# direct methods
.method public constructor <init>(Lzlc/season/rxdownload3/core/DownloadService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear(Lzlc/season/rxdownload3/core/Mission;Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->clear(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 88
    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clear$1;

    invoke-direct {v0, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clear$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clear$2;

    invoke-direct {v0, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clear$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final clearAll(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "successCb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/LocalMissionBox;->clearAll()Lio/reactivex/Maybe;

    move-result-object v0

    .line 93
    new-instance v1, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clearAll$1;

    invoke-direct {v1, p1}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clearAll$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lio/reactivex/functions/Consumer;

    new-instance v1, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clearAll$2;

    invoke-direct {v1, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$clearAll$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final create(Lzlc/season/rxdownload3/core/Mission;ZLzlc/season/rxdownload3/core/DownloadService$StatusCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$StatusCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzlc/season/rxdownload3/core/LocalMissionBox;->create(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$create$1;

    invoke-direct {p2, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$create$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$StatusCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final createAll(Ljava/util/List;ZLzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lzlc/season/rxdownload3/core/Mission;",
            ">;Z",
            "Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;",
            "Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "missions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzlc/season/rxdownload3/core/LocalMissionBox;->createAll(Ljava/util/List;Z)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$createAll$1;

    invoke-direct {p2, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$createAll$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$createAll$2;

    invoke-direct {p2, p4}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$createAll$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p4, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p2}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p4, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3, p4}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final delete(Lzlc/season/rxdownload3/core/Mission;ZLzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 6
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzlc/season/rxdownload3/core/LocalMissionBox;->delete(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$delete$1;

    invoke-direct {p2, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$delete$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$delete$2;

    invoke-direct {p2, p4}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$delete$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p4, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p2}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p4, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3, p4}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final deleteAll(ZLzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "successCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->deleteAll(Z)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$deleteAll$1;

    invoke-direct {v0, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$deleteAll$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$deleteAll$2;

    invoke-direct {v0, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$deleteAll$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final extension(Lzlc/season/rxdownload3/core/Mission;Ljava/lang/Class;Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 6
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            "Ljava/lang/Class<",
            "+",
            "Lzlc/season/rxdownload3/extension/Extension;",
            ">;",
            "Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;",
            "Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzlc/season/rxdownload3/core/LocalMissionBox;->extension(Lzlc/season/rxdownload3/core/Mission;Ljava/lang/Class;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 83
    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$extension$1;

    invoke-direct {p2, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$extension$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$extension$2;

    invoke-direct {p2, p4}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$extension$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p4, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p2}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p4, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3, p4}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final file(Lzlc/season/rxdownload3/core/Mission;Lzlc/season/rxdownload3/core/DownloadService$FileCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$FileCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->file(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$file$1;

    invoke-direct {v0, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$file$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$FileCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$file$2;

    invoke-direct {v0, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$file$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final isExists(Lzlc/season/rxdownload3/core/Mission;Lzlc/season/rxdownload3/core/DownloadService$BoolCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$BoolCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->isExists(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 41
    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$isExists$1;

    invoke-direct {v0, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$isExists$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$BoolCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$isExists$2;

    invoke-direct {v0, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$isExists$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final start(Lzlc/season/rxdownload3/core/Mission;Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->start(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$start$1;

    invoke-direct {v0, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$start$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$start$2;

    invoke-direct {v0, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$start$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final startAll(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "successCb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/LocalMissionBox;->startAll()Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$startAll$1;

    invoke-direct {v1, p1}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$startAll$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lio/reactivex/functions/Consumer;

    new-instance v1, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$startAll$2;

    invoke-direct {v1, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$startAll$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final stop(Lzlc/season/rxdownload3/core/Mission;Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->stop(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stop$1;

    invoke-direct {v0, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stop$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stop$2;

    invoke-direct {v0, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stop$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final stopAll(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "successCb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/LocalMissionBox;->stopAll()Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stopAll$1;

    invoke-direct {v1, p1}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stopAll$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lio/reactivex/functions/Consumer;

    new-instance v1, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stopAll$2;

    invoke-direct {v1, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$stopAll$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final update(Lzlc/season/rxdownload3/core/Mission;Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newMission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;->this$0:Lzlc/season/rxdownload3/core/DownloadService;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/DownloadService;->access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->update(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 98
    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$update$1;

    invoke-direct {v0, p2}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$update$1;-><init>(Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$update$2;

    invoke-direct {v0, p3}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder$update$2;-><init>(Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lzlc/season/rxdownload3/core/DownloadService$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
