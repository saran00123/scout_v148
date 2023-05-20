.class final Lzlc/season/rxdownload3/core/LocalMissionBox$update$1;
.super Ljava/lang/Object;
.source "LocalMissionBox.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/LocalMissionBox;->update(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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
.field final synthetic $newMission:Lzlc/season/rxdownload3/core/Mission;

.field final synthetic this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/LocalMissionBox;Lzlc/season/rxdownload3/core/Mission;)V
    .registers 3

    iput-object p1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$update$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    iput-object p2, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$update$1;->$newMission:Lzlc/season/rxdownload3/core/Mission;

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lzlc/season/rxdownload3/core/RealMission;

    iget-object v2, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$update$1;->$newMission:Lzlc/season/rxdownload3/core/Mission;

    iget-object v1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$update$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {v1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSemaphore$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lzlc/season/rxdownload3/core/RealMission;-><init>(Lzlc/season/rxdownload3/core/Mission;Ljava/util/concurrent/Semaphore;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    sget-object v1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getEnableDb$rxdownload3_release()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 51
    sget-object v1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getDbActor$rxdownload3_release()Lzlc/season/rxdownload3/database/DbActor;

    move-result-object v1

    invoke-interface {v1, v0}, Lzlc/season/rxdownload3/database/DbActor;->isExists(Lzlc/season/rxdownload3/core/RealMission;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 52
    sget-object v1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getDbActor$rxdownload3_release()Lzlc/season/rxdownload3/database/DbActor;

    move-result-object v1

    invoke-interface {v1, v0}, Lzlc/season/rxdownload3/database/DbActor;->update(Lzlc/season/rxdownload3/core/RealMission;)V

    .line 55
    :cond_34
    invoke-static {}, Lzlc/season/rxdownload3/helper/UtilsKt;->getANY()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
