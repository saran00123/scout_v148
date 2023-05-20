.class final Lzlc/season/rxdownload3/core/LocalMissionBox$clearAll$1;
.super Ljava/lang/Object;
.source "LocalMissionBox.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/LocalMissionBox;->clearAll()Lio/reactivex/Maybe;
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
    value = "SMAP\nLocalMissionBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalMissionBox.kt\nzlc/season/rxdownload3/core/LocalMissionBox$clearAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1586#2,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 LocalMissionBox.kt\nzlc/season/rxdownload3/core/LocalMissionBox$clearAll$1\n*L\n144#1,2:150\n*E\n"
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
.field final synthetic this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/LocalMissionBox;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$clearAll$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/MaybeEmitter;)V
    .registers 3
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

    .line 144
    iget-object p1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$clearAll$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSET$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 150
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzlc/season/rxdownload3/core/RealMission;

    .line 144
    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->realStop$rxdownload3_release()V

    goto :goto_11

    .line 145
    :cond_21
    iget-object p1, p0, Lzlc/season/rxdownload3/core/LocalMissionBox$clearAll$1;->this$0:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-static {p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;->access$getSET$p(Lzlc/season/rxdownload3/core/LocalMissionBox;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method
