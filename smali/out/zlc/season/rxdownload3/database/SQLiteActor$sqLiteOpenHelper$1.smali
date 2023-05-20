.class public final Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/database/SQLiteActor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSQLiteActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SQLiteActor.kt\nzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,251:1\n1586#2,2:252\n*E\n*S KotlinDebug\n*F\n+ 1 SQLiteActor.kt\nzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1\n*L\n43#1,2:252\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\"\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "zlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "execSql",
        "",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "sql",
        "",
        "onCreate",
        "onUpgrade",
        "oldVersion",
        "",
        "newVersion",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lzlc/season/rxdownload3/database/SQLiteActor;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/database/SQLiteActor;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;",
            "I)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->this$0:Lzlc/season/rxdownload3/database/SQLiteActor;

    iput-object p2, p0, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->$context:Landroid/content/Context;

    invoke-direct {p0, p3, p4, p5, p6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private final execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 52
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_d
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    .line 37
    :cond_3
    iget-object v0, p0, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->this$0:Lzlc/season/rxdownload3/database/SQLiteActor;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/database/SQLiteActor;->provideCreateSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p3, 0x2

    if-ge p2, p3, :cond_22

    .line 43
    iget-object p2, p0, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->this$0:Lzlc/season/rxdownload3/database/SQLiteActor;

    invoke-virtual {p2}, Lzlc/season/rxdownload3/database/SQLiteActor;->provideUpdateV2Sql()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 252
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p3}, Lzlc/season/rxdownload3/database/SQLiteActor$sqLiteOpenHelper$1;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_12

    :cond_22
    return-void
.end method
