.class final Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1;
.super Ljava/lang/Object;
.source "SQLiteActor.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/database/SQLiteActor;->getAllMission()Lio/reactivex/Maybe;
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
    value = "SMAP\nSQLiteActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SQLiteActor.kt\nzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1\n*L\n1#1,251:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012 \u0010\u0002\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "emitter",
        "Lio/reactivex/MaybeEmitter;",
        "",
        "Lzlc/season/rxdownload3/core/Mission;",
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
.field final synthetic this$0:Lzlc/season/rxdownload3/database/SQLiteActor;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/database/SQLiteActor;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1;->this$0:Lzlc/season/rxdownload3/database/SQLiteActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/MaybeEmitter;)V
    .registers 8
    .param p1    # Lio/reactivex/MaybeEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeEmitter<",
            "Ljava/util/List<",
            "Lzlc/season/rxdownload3/core/Mission;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1;->this$0:Lzlc/season/rxdownload3/database/SQLiteActor;

    invoke-static {v0}, Lzlc/season/rxdownload3/database/SQLiteActor;->access$getSqLiteOpenHelper$p(Lzlc/season/rxdownload3/database/SQLiteActor;)Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1;->this$0:Lzlc/season/rxdownload3/database/SQLiteActor;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/database/SQLiteActor;->getTABLE_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 215
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    check-cast v2, Ljava/lang/Throwable;

    :try_start_30
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 217
    :goto_3a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 218
    iget-object v4, p0, Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1;->this$0:Lzlc/season/rxdownload3/database/SQLiteActor;

    const-string v5, "cursor"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lzlc/season/rxdownload3/database/SQLiteActor;->onGetAllMission(Landroid/database/Cursor;)Lzlc/season/rxdownload3/core/Mission;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 220
    :cond_4f
    invoke-interface {p1, v3}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    .line 221
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_54} :catch_5a
    .catchall {:try_start_30 .. :try_end_54} :catchall_58

    .line 215
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_58
    move-exception p1

    goto :goto_5d

    :catch_5a
    move-exception p1

    move-object v2, p1

    :try_start_5c
    throw v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_58

    :goto_5d
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
