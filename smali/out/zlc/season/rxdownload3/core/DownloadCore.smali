.class public final Lzlc/season/rxdownload3/core/DownloadCore;
.super Ljava/lang/Object;
.source "DownloadCore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eJ\"\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00112\u0006\u0010\r\u001a\u00020\u000eJ\u001c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u000eJ\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u000eJ$\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00180\u0017J\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00110\u0006J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006J\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006J\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010$\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/DownloadCore;",
        "",
        "()V",
        "missionBox",
        "Lzlc/season/rxdownload3/core/MissionBox;",
        "clear",
        "Lio/reactivex/Maybe;",
        "mission",
        "Lzlc/season/rxdownload3/core/Mission;",
        "clearAll",
        "create",
        "Lio/reactivex/Flowable;",
        "Lzlc/season/rxdownload3/core/Status;",
        "autoStart",
        "",
        "createAll",
        "missions",
        "",
        "delete",
        "deleteFile",
        "deleteAll",
        "extension",
        "type",
        "Ljava/lang/Class;",
        "Lzlc/season/rxdownload3/extension/Extension;",
        "file",
        "Ljava/io/File;",
        "getAllMission",
        "initRxJavaPlugin",
        "",
        "isExists",
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
.field private final missionBox:Lzlc/season/rxdownload3/core/MissionBox;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getMissionBox$rxdownload3_release()Lzlc/season/rxdownload3/core/MissionBox;

    move-result-object v0

    iput-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    .line 17
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/DownloadCore;->initRxJavaPlugin()V

    return-void
.end method

.method private final initRxJavaPlugin()V
    .registers 2

    .line 21
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    return-void
.end method


# virtual methods
.method public final clear(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1}, Lzlc/season/rxdownload3/core/MissionBox;->clear(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final clearAll()Lio/reactivex/Maybe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 89
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0}, Lzlc/season/rxdownload3/core/MissionBox;->clearAll()Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Flowable;
    .registers 4
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            "Z)",
            "Lio/reactivex/Flowable<",
            "Lzlc/season/rxdownload3/core/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1, p2}, Lzlc/season/rxdownload3/core/MissionBox;->create(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final createAll(Ljava/util/List;Z)Lio/reactivex/Maybe;
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lzlc/season/rxdownload3/core/Mission;",
            ">;Z)",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "missions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1, p2}, Lzlc/season/rxdownload3/core/MissionBox;->createAll(Ljava/util/List;Z)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Maybe;
    .registers 4
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            "Z)",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1, p2}, Lzlc/season/rxdownload3/core/MissionBox;->delete(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final deleteAll(Z)Lio/reactivex/Maybe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1}, Lzlc/season/rxdownload3/core/MissionBox;->deleteAll(Z)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final extension(Lzlc/season/rxdownload3/core/Mission;Ljava/lang/Class;)Lio/reactivex/Maybe;
    .registers 4
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
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
            ">;)",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1, p2}, Lzlc/season/rxdownload3/core/MissionBox;->extension(Lzlc/season/rxdownload3/core/Mission;Ljava/lang/Class;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final file(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1}, Lzlc/season/rxdownload3/core/MissionBox;->file(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final getAllMission()Lio/reactivex/Maybe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/util/List<",
            "Lzlc/season/rxdownload3/core/Mission;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getEnableDb$rxdownload3_release()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 77
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getDbActor$rxdownload3_release()Lzlc/season/rxdownload3/database/DbActor;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Lzlc/season/rxdownload3/database/DbActor;->getAllMission()Lio/reactivex/Maybe;

    move-result-object v0

    goto :goto_20

    .line 80
    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    const-string v1, "Maybe.just(emptyList())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_20
    return-object v0
.end method

.method public final isExists(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1}, Lzlc/season/rxdownload3/core/MissionBox;->isExists(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final start(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1}, Lzlc/season/rxdownload3/core/MissionBox;->start(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final startAll()Lio/reactivex/Maybe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0}, Lzlc/season/rxdownload3/core/MissionBox;->startAll()Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final stop(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1}, Lzlc/season/rxdownload3/core/MissionBox;->stop(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final stopAll()Lio/reactivex/Maybe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0}, Lzlc/season/rxdownload3/core/MissionBox;->stopAll()Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final update(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/Mission;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newMission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadCore;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    invoke-interface {v0, p1}, Lzlc/season/rxdownload3/core/MissionBox;->update(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
