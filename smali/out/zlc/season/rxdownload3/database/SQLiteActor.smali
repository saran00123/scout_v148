.class public Lzlc/season/rxdownload3/database/SQLiteActor;
.super Ljava/lang/Object;
.source "SQLiteActor.kt"

# interfaces
.implements Lzlc/season/rxdownload3/database/DbActor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSQLiteActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SQLiteActor.kt\nzlc/season/rxdownload3/database/SQLiteActor\n*L\n1#1,251:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010*\u0001 \u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0014\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0)0(H\u0016J\u0008\u0010+\u001a\u00020#H\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010.\u001a\u00020/2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u00100\u001a\u00020*2\u0006\u00101\u001a\u000202H\u0016J\u0018\u00103\u001a\u00020#2\u0006\u00101\u001a\u0002022\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u000205H\u0016J\u0010\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u000205H\u0016J\u0010\u00109\u001a\u00020/2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010:\u001a\u00020/2\u0006\u0010$\u001a\u00020%H\u0016J\u0008\u0010;\u001a\u00020\u0006H\u0016J\u000e\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00060)H\u0016J\u0010\u0010=\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0017\u0010>\u001a\u0004\u0018\u00010-2\u0006\u00106\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010?J\u0017\u0010@\u001a\u00020\u000b2\u0008\u0010A\u001a\u0004\u0018\u00010-H\u0002\u00a2\u0006\u0002\u0010BJ\u0010\u0010C\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010D\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0014\u0010\u0013\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008R\u0014\u0010\u0017\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008R\u0014\u0010\u0019\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0008R\u0014\u0010\u001b\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0008R\u0014\u0010\u001d\u001a\u00020\u0006X\u0084D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008R\u0010\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010!\u00a8\u0006E"
    }
    d2 = {
        "Lzlc/season/rxdownload3/database/SQLiteActor;",
        "Lzlc/season/rxdownload3/database/DbActor;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "CURRENT_SIZE",
        "",
        "getCURRENT_SIZE",
        "()Ljava/lang/String;",
        "DATABASE_NAME",
        "DATABASE_VERSION",
        "",
        "RANGE_FLAG",
        "getRANGE_FLAG",
        "RANGE_FLAG_FALSE",
        "RANGE_FLAG_NULL",
        "RANGE_FLAG_TRUE",
        "SAVE_NAME",
        "getSAVE_NAME",
        "SAVE_PATH",
        "getSAVE_PATH",
        "STATUS_FLAG",
        "getSTATUS_FLAG",
        "TABLE_NAME",
        "getTABLE_NAME",
        "TAG",
        "getTAG",
        "TOTAL_SIZE",
        "getTOTAL_SIZE",
        "URL",
        "getURL",
        "sqLiteOpenHelper",
        "zlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1",
        "Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;",
        "create",
        "",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "delete",
        "getAllMission",
        "Lio/reactivex/Maybe;",
        "",
        "Lzlc/season/rxdownload3/core/Mission;",
        "init",
        "isExists",
        "",
        "onCreate",
        "Landroid/content/ContentValues;",
        "onGetAllMission",
        "cursor",
        "Landroid/database/Cursor;",
        "onRead",
        "onRestoreStatus",
        "Lzlc/season/rxdownload3/core/Status;",
        "flag",
        "status",
        "onTransformStatus",
        "onUpdate",
        "onUpdateStatus",
        "provideCreateSql",
        "provideUpdateV2Sql",
        "read",
        "transformFlagToBool",
        "(I)Ljava/lang/Boolean;",
        "transformFlagToInt",
        "rangeFlag",
        "(Ljava/lang/Boolean;)I",
        "update",
        "updateStatus",
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
.field private final CURRENT_SIZE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final DATABASE_NAME:Ljava/lang/String;

.field private final DATABASE_VERSION:I

.field private final RANGE_FLAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final RANGE_FLAG_FALSE:I

.field private final RANGE_FLAG_NULL:I

.field private final RANGE_FLAG_TRUE:I

.field private final SAVE_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final SAVE_PATH:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final STATUS_FLAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TABLE_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TOTAL_SIZE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final URL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RxDownload.db"

    .line 16
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->DATABASE_NAME:Ljava/lang/String;

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->DATABASE_VERSION:I

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG_FALSE:I

    .line 21
    iput v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG_TRUE:I

    const-string v0, "missions"

    .line 23
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    const-string v0, "tag"

    .line 25
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    const-string v0, "url"

    .line 26
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->URL:Ljava/lang/String;

    const-string v0, "save_name"

    .line 27
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_NAME:Ljava/lang/String;

    const-string v0, "save_path"

    .line 28
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_PATH:Ljava/lang/String;

    const-string v0, "range_flag"

    .line 29
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG:Ljava/lang/String;

    const-string v0, "current_size"

    .line 30
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->CURRENT_SIZE:Ljava/lang/String;

    const-string v0, "total_size"

    .line 31
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TOTAL_SIZE:Ljava/lang/String;

    const-string v0, "status_flag"

    .line 32
    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->STATUS_FLAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    iget-object v5, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->DATABASE_NAME:Ljava/lang/String;

    iget v7, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->DATABASE_VERSION:I

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;-><init>(Lzlc/season/rxdownload3/database/SQLiteActor;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    return-void
.end method

.method public static final synthetic access$getSqLiteOpenHelper$p(Lzlc/season/rxdownload3/database/SQLiteActor;)Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;
    .registers 1

    .line 15
    iget-object p0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    return-object p0
.end method

.method private final transformFlagToBool(I)Ljava/lang/Boolean;
    .registers 3

    .line 246
    iget v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG_TRUE:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_15

    .line 247
    :cond_a
    iget v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG_FALSE:I

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method private final transformFlagToInt(Ljava/lang/Boolean;)I
    .registers 3

    const/4 v0, 0x1

    .line 238
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget p1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG_TRUE:I

    goto :goto_1f

    :cond_e
    const/4 v0, 0x0

    .line 239
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG_FALSE:I

    goto :goto_1f

    .line 240
    :cond_1c
    iget p1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG_NULL:I

    neg-int p1, p1

    :goto_1f
    return p1
.end method


# virtual methods
.method public create(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 5
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/database/SQLiteActor;->onCreate(Lzlc/season/rxdownload3/core/RealMission;)Landroid/content/ContentValues;

    move-result-object p1

    .line 102
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public delete(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 7
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getAllMission()Lio/reactivex/Maybe;
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

    .line 211
    new-instance v0, Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1;

    invoke-direct {v0, p0}, Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$1;-><init>(Lzlc/season/rxdownload3/database/SQLiteActor;)V

    check-cast v0, Lio/reactivex/MaybeOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Maybe;->create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 222
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$2;->INSTANCE:Lzlc/season/rxdownload3/database/SQLiteActor$getAllMission$2;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    const-string v1, "Maybe.create<List<Missio\u2026all mission error\", it) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getCURRENT_SIZE()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->CURRENT_SIZE:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRANGE_FLAG()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG:Ljava/lang/String;

    return-object v0
.end method

.method protected final getSAVE_NAME()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getSAVE_PATH()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method protected final getSTATUS_FLAG()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->STATUS_FLAG:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTABLE_NAME()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTOTAL_SIZE()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TOTAL_SIZE:Ljava/lang/String;

    return-object v0
.end method

.method protected final getURL()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 2

    .line 62
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public isExists(Lzlc/season/rxdownload3/core/RealMission;)Z
    .registers 7
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 91
    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 89
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_4f
    move-object v3, v0

    check-cast v3, Landroid/database/Cursor;

    .line 94
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "cursor"

    .line 95
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_5e} :catch_68
    .catchall {:try_start_4f .. :try_end_5e} :catchall_66

    if-eqz p1, :cond_61

    goto :goto_62

    :cond_61
    move v2, v4

    :goto_62
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v2

    :catchall_66
    move-exception p1

    goto :goto_6b

    :catch_68
    move-exception p1

    move-object v1, p1

    .line 93
    :try_start_6a
    throw v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_66

    :goto_6b
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onCreate(Lzlc/season/rxdownload3/core/RealMission;)Landroid/content/ContentValues;
    .registers 6
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 108
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->URL:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSaveName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getRangeFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/database/SQLiteActor;->transformFlagToInt(Ljava/lang/Boolean;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TOTAL_SIZE:Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v1
.end method

.method public onGetAllMission(Landroid/database/Cursor;)Lzlc/season/rxdownload3/core/Mission;
    .registers 13
    .param p1    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->URL:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_PATH:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 231
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TOTAL_SIZE:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 233
    new-instance p1, Lzlc/season/rxdownload3/core/Mission;

    const-string v1, "url"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "saveName"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "savePath"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/database/SQLiteActor;->transformFlagToBool(I)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "tag"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public onRead(Landroid/database/Cursor;Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 15
    .param p1    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_PATH:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 179
    iget-object v3, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->CURRENT_SIZE:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 180
    iget-object v3, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TOTAL_SIZE:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 181
    iget-object v3, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->STATUS_FLAG:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 183
    invoke-virtual {p2}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v3

    const-string v4, "saveName"

    .line 184
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lzlc/season/rxdownload3/core/Mission;->setSaveName(Ljava/lang/String;)V

    const-string v0, "savePath"

    .line 185
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lzlc/season/rxdownload3/core/Mission;->setSavePath(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v2}, Lzlc/season/rxdownload3/database/SQLiteActor;->transformFlagToBool(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lzlc/season/rxdownload3/core/Mission;->setRangeFlag(Ljava/lang/Boolean;)V

    .line 188
    new-instance v0, Lzlc/season/rxdownload3/core/Status;

    const/4 v9, 0x0

    move-object v4, v0

    move-wide v7, v10

    invoke-direct/range {v4 .. v9}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZ)V

    .line 189
    invoke-virtual {p2, v10, v11}, Lzlc/season/rxdownload3/core/RealMission;->setTotalSize(J)V

    .line 190
    invoke-virtual {p0, p1, v0}, Lzlc/season/rxdownload3/database/SQLiteActor;->onRestoreStatus(ILzlc/season/rxdownload3/core/Status;)Lzlc/season/rxdownload3/core/Status;

    move-result-object p1

    invoke-virtual {p2, p1}, Lzlc/season/rxdownload3/core/RealMission;->setStatus(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method

.method public onRestoreStatus(ILzlc/season/rxdownload3/core/Status;)Lzlc/season/rxdownload3/core/Status;
    .registers 4
    .param p2    # Lzlc/season/rxdownload3/core/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_43

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_24

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    .line 200
    new-instance p1, Lzlc/season/rxdownload3/core/Normal;

    invoke-direct {p1, p2}, Lzlc/season/rxdownload3/core/Normal;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    goto :goto_4a

    .line 199
    :cond_1c
    new-instance p1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;

    invoke-direct {p1, p2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    goto :goto_4a

    .line 198
    :cond_24
    new-instance p1, Lzlc/season/rxdownload3/core/Succeed;

    invoke-direct {p1, p2}, Lzlc/season/rxdownload3/core/Succeed;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    goto :goto_4a

    .line 197
    :cond_2c
    new-instance p1, Lzlc/season/rxdownload3/core/Failed;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, p2, v0}, Lzlc/season/rxdownload3/core/Failed;-><init>(Lzlc/season/rxdownload3/core/Status;Ljava/lang/Throwable;)V

    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    goto :goto_4a

    .line 196
    :cond_3b
    new-instance p1, Lzlc/season/rxdownload3/core/Suspend;

    invoke-direct {p1, p2}, Lzlc/season/rxdownload3/core/Suspend;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    goto :goto_4a

    .line 195
    :cond_43
    new-instance p1, Lzlc/season/rxdownload3/core/Normal;

    invoke-direct {p1, p2}, Lzlc/season/rxdownload3/core/Normal;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    :goto_4a
    return-object p1
.end method

.method public onTransformStatus(Lzlc/season/rxdownload3/core/Status;)I
    .registers 4
    .param p1    # Lzlc/season/rxdownload3/core/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Normal;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    goto :goto_22

    .line 152
    :cond_b
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Suspend;

    if-eqz v0, :cond_11

    const/4 v1, 0x2

    goto :goto_22

    .line 153
    :cond_11
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Failed;

    if-eqz v0, :cond_17

    const/4 v1, 0x3

    goto :goto_22

    .line 154
    :cond_17
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Succeed;

    if-eqz v0, :cond_1d

    const/4 v1, 0x4

    goto :goto_22

    .line 155
    :cond_1d
    instance-of p1, p1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;

    if-eqz p1, :cond_22

    const/4 v1, 0x5

    :cond_22
    :goto_22
    return v1
.end method

.method public onUpdate(Lzlc/season/rxdownload3/core/RealMission;)Landroid/content/ContentValues;
    .registers 6
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 127
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSaveName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG:Ljava/lang/String;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getRangeFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/database/SQLiteActor;->transformFlagToInt(Ljava/lang/Boolean;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TOTAL_SIZE:Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v1
.end method

.method public onUpdateStatus(Lzlc/season/rxdownload3/core/RealMission;)Landroid/content/ContentValues;
    .registers 6
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 144
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->CURRENT_SIZE:Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v2

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/Status;->getDownloadSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->STATUS_FLAG:Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/database/SQLiteActor;->onTransformStatus(Lzlc/season/rxdownload3/core/Status;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public provideCreateSql()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (\n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT PRIMARY KEY NOT NULL,\n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL,\n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT,\n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->SAVE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->RANGE_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER,\n                "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->CURRENT_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TOTAL_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->STATUS_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER)\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public provideUpdateV2Sql()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ADD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->CURRENT_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TEXT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->STATUS_FLAG:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 82
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public read(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 7
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 163
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v3

    invoke-virtual {v3}, Lzlc/season/rxdownload3/core/Mission;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 166
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_45
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "cursor"

    .line 168
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_54} :catch_65
    .catchall {:try_start_45 .. :try_end_54} :catchall_63

    if-nez v3, :cond_5a

    .line 169
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 171
    :cond_5a
    :try_start_5a
    invoke-virtual {p0, v0, p1}, Lzlc/season/rxdownload3/database/SQLiteActor;->onRead(Landroid/database/Cursor;Lzlc/season/rxdownload3/core/RealMission;)V

    .line 172
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5f} :catch_65
    .catchall {:try_start_5a .. :try_end_5f} :catchall_63

    .line 166
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_63
    move-exception p1

    goto :goto_68

    :catch_65
    move-exception p1

    move-object v2, p1

    :try_start_67
    throw v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_63

    :goto_68
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public update(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 8
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/database/SQLiteActor;->onUpdate(Lzlc/season/rxdownload3/core/RealMission;)Landroid/content/ContentValues;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateStatus(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 8
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->sqLiteOpenHelper:Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/database/SQLiteActor;->onUpdateStatus(Lzlc/season/rxdownload3/core/RealMission;)Landroid/content/ContentValues;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_3b

    .line 138
    iget-object v2, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TABLE_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lzlc/season/rxdownload3/database/SQLiteActor;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getTag()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3b
    return-void
.end method
