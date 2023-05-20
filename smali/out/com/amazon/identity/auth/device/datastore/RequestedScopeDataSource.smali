.class public final Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;
.super Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
.source "RequestedScopeDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/datastore/AbstractDataSource<",
        "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static INSTANCE:Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource; = null

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.datastore.RequestedScopeDataSource"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->ALL_COLUMNS:[Ljava/lang/String;

    sput-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;
    .registers 3

    const-class v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    if-nez v1, :cond_12

    .line 39
    new-instance v1, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->getMAPdatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    .line 41
    :cond_12
    sget-object p0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static resetInstance()V
    .registers 1

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    .line 47
    invoke-static {}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->resetDatabaseInstance()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object p1

    return-object p1
.end method

.method public cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_85

    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_85

    .line 150
    :cond_a
    :try_start_a
    new-instance v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>()V

    .line 152
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->ROW_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setRowId(J)V

    .line 153
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->SCOPE:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setScopeValue(Ljava/lang/String;)V

    .line 154
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAppFamilyId(Ljava/lang/String;)V

    .line 155
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setDirectedId(Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->AUTHORIZATION_ACCESS_TOKEN_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 157
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->AUTHORIZATION_REFRESH_TOKEN_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_69} :catch_6a

    return-object v1

    :catch_6a
    move-exception p1

    .line 163
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_85
    :goto_85
    return-object v0
.end method

.method public deleteByAppFamilyId(Ljava/lang/String;)I
    .registers 4

    .line 126
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteByDirectedId(Ljava/lang/String;)I
    .registers 4

    .line 135
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteByScope(Ljava/lang/String;)I
    .registers 4

    .line 117
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->SCOPE:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findByAppFamilyId(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findByAuthorizationAccessTokenId(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->AUTHORIZATION_ACCESS_TOKEN_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findByAuthorizationRefreshTokenId(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->AUTHORIZATION_REFRESH_TOKEN_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findByDirectedId(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findByPrimaryKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
    .registers 10

    const/4 v0, 0x3

    .line 101
    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->SCOPE:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v4, v4, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v2, v2, v4

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v5, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v5, v5, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v2, v2, v5

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 104
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findOneRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    return-object p1
.end method

.method public findByScope(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->SCOPE:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .line 175
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 140
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    const-string v0, "RequestedScope"

    return-object v0
.end method
