.class public abstract Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELETE_SUCCEEDED:I = 0x1

.field public static final INSERT_FAILED:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.datastore.AbstractDataSource"

.field private static final UPDATE_SUCCEEDED:I = 0x1


# instance fields
.field protected database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 39
    iput-object p1, p0, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "database can\'t be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getWhereClause([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    if-eqz p0, :cond_6c

    if-eqz p1, :cond_6c

    .line 263
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_64

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    .line 269
    :goto_12
    array-length v3, p0

    if-ge v0, v3, :cond_63

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    if-nez v2, :cond_29

    const-string v2, " IS NULL"

    goto :goto_41

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_58

    const-string v2, " AND "

    goto :goto_59

    :cond_58
    move-object v2, v1

    :goto_59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_63
    return-object v2

    .line 264
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "selectionFields and selectionValues differ in length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both arguments have to be either null or not null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TK;"
        }
    .end annotation
.end method

.method public deleteAllRows()I
    .registers 2

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0, v0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->deleteRows([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteRow(J)Z
    .registers 7

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rowid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_20

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    return p2
.end method

.method public deleteRows([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 202
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getWhereClause([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return p1

    :catch_10
    move-exception p1

    .line 206
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method protected deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x1

    .line 217
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->deleteRows([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findAllRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0, v0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->findAllRows([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllRows([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 99
    :try_start_6
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getWhereClause([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    iget-object v2, p0, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getAllColumns()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    :goto_21
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 109
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_21

    .line 115
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cursor contains invalid object!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_44
    .catchall {:try_start_6 .. :try_end_3c} :catchall_42

    :cond_3c
    if-eqz v1, :cond_67

    .line 127
    :goto_3e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_67

    :catchall_42
    move-exception p1

    goto :goto_68

    :catch_44
    move-exception p1

    .line 122
    :try_start_45
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_42

    if-eqz v1, :cond_67

    goto :goto_3e

    :cond_67
    :goto_67
    return-object v0

    :goto_68
    if-eqz v1, :cond_6d

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_6d
    throw p1
.end method

.method protected findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->findAllRows([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    const-string v0, "rowid"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->findOneRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    return-object p1
.end method

.method public findOneRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    :try_start_1
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getWhereClause([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    iget-object v1, p0, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getAllColumns()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_2c
    .catchall {:try_start_1 .. :try_end_17} :catchall_29

    if-eqz p1, :cond_23

    .line 63
    :try_start_19
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_4e

    goto :goto_23

    :catch_21
    move-exception p2

    goto :goto_2e

    :cond_23
    :goto_23
    if-eqz p1, :cond_4d

    .line 73
    :goto_25
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    :catchall_29
    move-exception p2

    move-object p1, v0

    goto :goto_4f

    :catch_2c
    move-exception p2

    move-object p1, v0

    .line 68
    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_4e

    if-eqz p1, :cond_4d

    goto :goto_25

    :cond_4d
    :goto_4d
    return-object v0

    :catchall_4e
    move-exception p2

    :goto_4f
    if-eqz p1, :cond_54

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_54
    throw p2
.end method

.method protected findOneRowBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 86
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->findOneRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllColumns()[Ljava/lang/String;
.end method

.method public getColumnIndex(Landroid/database/Cursor;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p2, :cond_14

    .line 311
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getAllColumns()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_14

    .line 314
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getAllColumns()[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 312
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "colIndex is out of bound!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public insertRow(Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->insertRow(Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertRow(Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;Landroid/content/Context;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroid/content/Context;",
            ")J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    .line 172
    :cond_5
    :try_start_5
    sget-object v2, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert Row table="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vals="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;->getValuesForInsert(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;->getValuesForInsert(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 174
    invoke-virtual {p1, v2, v3}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;->setRowId(J)V
    :try_end_47
    .catch Lcom/amazon/identity/auth/device/datastore/EncryptionException; {:try_start_5 .. :try_end_47} :catch_48

    return-wide v2

    :catch_48
    move-exception p1

    .line 180
    sget-object p2, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->LOG_TAG:Ljava/lang/String;

    const-string v2, "insertRow failed"

    invoke-static {p2, v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public updateRow(JLandroid/content/ContentValues;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->getTableName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rowid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, v2, p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_24

    goto :goto_25

    :cond_24
    move p2, v0

    :goto_25
    return p2
.end method
