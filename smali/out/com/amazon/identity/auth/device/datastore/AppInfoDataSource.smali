.class public final Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;
.super Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
.source "AppInfoDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/datastore/AbstractDataSource<",
        "Lcom/amazon/identity/auth/device/dataobject/AppInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static INSTANCE:Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource; = null

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.datastore.AppInfoDataSource"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sput-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;
    .registers 3

    const-class v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    monitor-enter v0

    .line 33
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    if-nez v1, :cond_12

    .line 34
    new-instance v1, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->getMAPdatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    .line 36
    :cond_12
    sget-object p0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;
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

    .line 41
    sput-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    .line 42
    invoke-static {}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->resetDatabaseInstance()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 7

    const-string v0, ","

    const/4 v1, 0x0

    if-eqz p1, :cond_cc

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_cc

    .line 111
    :cond_d
    :try_start_d
    new-instance v2, Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;-><init>()V

    .line 113
    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->ROW_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setRowId(J)V

    .line 114
    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setAppFamilyId(Ljava/lang/String;)V

    .line 115
    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->APP_VARIANT_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setAppVariantId(Ljava/lang/String;)V

    .line 116
    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->PACKAGE_NAME:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 117
    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->ALLOWED_SCOPES:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    .line 118
    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->toStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setAllowedScopes([Ljava/lang/String;)V

    .line 120
    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->GRANTED_PERMISSIONS:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    .line 121
    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->toStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setGrantedPermissions([Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->CLIENT_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v0, v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setClientId(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->AUTHZ_HOST:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v0, v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setAuthorizationHost(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->EXCHANGE_HOST:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v0, v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setExchangeHost(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->PAYLOAD:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v0, v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setPayload(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_b0} :catch_b1

    return-object v2

    :catch_b1
    move-exception p1

    .line 134
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cc
    :goto_cc
    return-object v1
.end method

.method public deleteByAppFamilyId(Ljava/lang/String;)I
    .registers 4

    .line 87
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteByPackageName(Ljava/lang/String;)I
    .registers 4

    .line 96
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->PACKAGE_NAME:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->deleteRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)I

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
            "Lcom/amazon/identity/auth/device/dataobject/AppInfo;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->findAllRowsBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findByAppVariantId(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 4

    .line 60
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->APP_VARIANT_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->findOneRowBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    return-object p1
.end method

.method public findByPackageName(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 4

    .line 69
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->PACKAGE_NAME:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->findOneRowBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    return-object p1
.end method

.method public findByPrimaryKey(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->findByAppVariantId(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .line 146
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 101
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    const-string v0, "AppInfo"

    return-object v0
.end method
