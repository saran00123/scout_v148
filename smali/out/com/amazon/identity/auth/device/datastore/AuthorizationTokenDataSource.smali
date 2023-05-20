.class public final Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;
.super Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
.source "AuthorizationTokenDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/datastore/AbstractDataSource<",
        "Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static INSTANCE:Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource; = null

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.datastore.AuthorizationTokenDataSource"

.field private static final TABLE_NAMESPACE:Ljava/lang/String; = "AuthTokenDataSource"

.field private static mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sput-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;
    .registers 4

    const-class v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    if-nez v1, :cond_22

    .line 41
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating AuthTokenDataSource Instance"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->getMAPdatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    .line 43
    new-instance v1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    const-string v2, "AuthTokenDataSource"

    invoke-direct {v1, p0, v2}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    .line 45
    :cond_22
    sget-object p0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    sget-object v1, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->onUpgrade(Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;)V

    .line 46
    sget-object p0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static resetInstance()V
    .registers 1

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    .line 52
    invoke-static {}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->resetDatabaseInstance()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object p1

    return-object p1
.end method

.method public cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_b4

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_b4

    .line 121
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->values()[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    move-result-object v1

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->TYPE:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v1, v1, v2

    .line 122
    invoke-static {v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationTokenFactory;->getAuthorizationToken(Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v1

    .line 123
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setId(J)V

    .line 124
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setAppFamilyId(Ljava/lang/String;)V

    .line 125
    sget-object v2, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->TOKEN:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setTokenValue(Ljava/lang/String;)V

    .line 126
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->CREATION_TIME:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    .line 127
    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v2}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setCreationTime(Ljava/util/Date;)V

    .line 129
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    .line 130
    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setExpirationTime(Ljava/util/Date;)V

    .line 132
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->MISC_DATA:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setMiscData([B)V

    .line 133
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setDirectedId(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_98} :catch_99

    return-object v1

    :catch_99
    move-exception p1

    .line 139
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->LOG_TAG:Ljava/lang/String;

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

    :cond_b4
    :goto_b4
    return-object v0
.end method

.method public deleteByAppFamilyId(Ljava/lang/String;)I
    .registers 4

    .line 97
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteByDirectedId(Ljava/lang/String;)I
    .registers 4

    .line 106
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I

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
            "Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
    .registers 3

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    return-object p1
.end method

.method public findByPrimaryKey(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
    .registers 3

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    return-object p1
.end method

.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .line 151
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 111
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    const-string v0, "AuthorizationToken"

    return-object v0
.end method
