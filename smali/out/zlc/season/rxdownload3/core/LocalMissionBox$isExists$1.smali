.class final Lzlc/season/rxdownload3/core/LocalMissionBox$isExists$1;
.super Ljava/lang/Object;
.source "LocalMissionBox.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/LocalMissionBox;->isExists(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalMissionBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalMissionBox.kt\nzlc/season/rxdownload3/core/LocalMissionBox$isExists$1\n*L\n1#1,149:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $mission:Lzlc/season/rxdownload3/core/Mission;

.field final synthetic this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/LocalMissionBox;Lzlc/season/rxdownload3/core/Mission;)V
    .registers 3

    iput-object p1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$isExists$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    iput-object p2, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$isExists$1;->$mission:Lzlc/season/rxdownload3/core/Mission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/MaybeEmitter;)V
    .registers 10
    .param p1    # Lio/reactivex/MaybeEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$isExists$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSET$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v2

    iget-object v3, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$isExists$1;->$mission:Lzlc/season/rxdownload3/core/Mission;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    check-cast v1, Lzlc/season/rxdownload3/core/RealMission;

    if-eqz v1, :cond_39

    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_6d

    .line 24
    :cond_39
    new-instance v0, Lzlc/season/rxdownload3/core/RealMission;

    iget-object v2, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$isExists$1;->$mission:Lzlc/season/rxdownload3/core/Mission;

    iget-object v1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$isExists$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {v1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSemaphore$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lzlc/season/rxdownload3/core/RealMission;-><init>(Lzlc/season/rxdownload3/core/Mission;Ljava/util/concurrent/Semaphore;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    sget-object v1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getEnableDb$rxdownload3_release()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 26
    sget-object v1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getDbActor$rxdownload3_release()Lzlc/season/rxdownload3/database/DbActor;

    move-result-object v1

    invoke-interface {v1, v0}, Lzlc/season/rxdownload3/database/DbActor;->isExists(Lzlc/season/rxdownload3/core/RealMission;)Z

    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_65
    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_6d
    return-void
.end method
