.class public interface abstract Lzlc/season/rxdownload3/core/MissionBox;
.super Ljava/lang/Object;
.source "MissionBox.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H&J\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J$\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\n\u001a\u00020\u000bH&J\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000bH&J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u000bH&J&\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00150\u0014H&J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H&J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H&J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u001e\u001a\u00020\u0005H&\u00a8\u0006\u001f"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/MissionBox;",
        "",
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


# virtual methods
.method public abstract clear(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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
.end method

.method public abstract clearAll()Lio/reactivex/Maybe;
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
.end method

.method public abstract create(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Flowable;
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
.end method

.method public abstract createAll(Ljava/util/List;Z)Lio/reactivex/Maybe;
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
.end method

.method public abstract delete(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Maybe;
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
.end method

.method public abstract deleteAll(Z)Lio/reactivex/Maybe;
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
.end method

.method public abstract extension(Lzlc/season/rxdownload3/core/Mission;Ljava/lang/Class;)Lio/reactivex/Maybe;
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
.end method

.method public abstract file(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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
.end method

.method public abstract isExists(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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
.end method

.method public abstract start(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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
.end method

.method public abstract startAll()Lio/reactivex/Maybe;
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
.end method

.method public abstract stop(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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
.end method

.method public abstract stopAll()Lio/reactivex/Maybe;
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
.end method

.method public abstract update(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;
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
.end method
