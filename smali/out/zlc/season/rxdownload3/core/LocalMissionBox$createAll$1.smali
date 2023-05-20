.class final Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;
.super Ljava/lang/Object;
.source "LocalMissionBox.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/LocalMissionBox;->createAll(Ljava/util/List;Z)Lio/reactivex/Maybe;
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
    value = "SMAP\nLocalMissionBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalMissionBox.kt\nzlc/season/rxdownload3/core/LocalMissionBox$createAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1586#2,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 LocalMissionBox.kt\nzlc/season/rxdownload3/core/LocalMissionBox$createAll$1\n*L\n82#1,2:150\n*E\n"
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
.field final synthetic $autoStart:Z

.field final synthetic $missions:Ljava/util/List;

.field final synthetic this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/LocalMissionBox;Ljava/util/List;Z)V
    .registers 4

    iput-object p1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    iput-object p2, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->$missions:Ljava/util/List;

    iput-boolean p3, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->$autoStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/MaybeEmitter;)V
    .registers 11
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

    .line 82
    iget-object v0, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->$missions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lzlc/season/rxdownload3/core/Mission;

    .line 83
    iget-object v1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {v1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSET$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v4}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    check-cast v2, Lzlc/season/rxdownload3/core/RealMission;

    if-nez v2, :cond_d

    .line 85
    new-instance v1, Lzlc/season/rxdownload3/core/RealMission;

    iget-object v2, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {v2}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSemaphore$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    iget-boolean v5, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->$autoStart:Z

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lzlc/season/rxdownload3/core/RealMission;-><init>(Lzlc/season/rxdownload3/core/Mission;Ljava/util/concurrent/Semaphore;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    iget-object v2, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$createAll$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {v2}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSET$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 89
    :cond_5f
    invoke-static {}, Lzlc/season/rxdownload3/helper/UtilsKt;->getANY()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
