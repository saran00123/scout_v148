.class public Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;
.super Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
.source "ProfileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/datastore/AbstractDataSource<",
        "Lcom/amazon/identity/auth/device/dataobject/Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static INSTANCE:Lcom/amazon/identity/auth/device/datastore/ProfileDataSource; = null

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.datastore.ProfileDataSource"

.field private static final TABLE_NAMESPACE:Ljava/lang/String; = "ProfileDataSource"

.field private static mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sput-object v0, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;
    .registers 4

    const-class v0, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    if-nez v1, :cond_22

    .line 33
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating new ProfileDataSource"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v1, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->getMAPdatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    .line 35
    new-instance v1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    const-string v2, "ProfileDataSource"

    invoke-direct {v1, p0, v2}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    .line 37
    :cond_22
    sget-object p0, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    sget-object v1, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->onUpgrade(Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;)V

    .line 38
    sget-object p0, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;
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

    .line 43
    sput-object v0, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->INSTANCE:Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    .line 44
    invoke-static {}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->resetDatabaseInstance()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/Profile;

    move-result-object p1

    return-object p1
.end method

.method public cursorToObject(Landroid/database/Cursor;)Lcom/amazon/identity/auth/device/dataobject/Profile;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_71

    .line 64
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_71

    .line 69
    :cond_a
    :try_start_a
    new-instance v1, Lcom/amazon/identity/auth/device/dataobject/Profile;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/dataobject/Profile;-><init>()V

    .line 70
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/dataobject/Profile;->setId(J)V

    .line 71
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/Profile;->setAppId(Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    .line 73
    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/dataobject/Profile;->setExpirationTime(Ljava/util/Date;)V

    .line 74
    sget-object v2, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->mEncryptionHelper:Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;

    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->DATA:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getColumnIndex(Landroid/database/Cursor;I)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->setData(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_55} :catch_56

    return-object v1

    :catch_56
    move-exception p1

    .line 79
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->LOG_TAG:Ljava/lang/String;

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

    :cond_71
    :goto_71
    return-object v0
.end method

.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .line 59
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->ALL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 49
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/Profile;
    .registers 3

    const-string v0, "AppId"

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->findOneRowBySingleColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/Profile;

    return-object p1
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    const-string v0, "Profile"

    return-object v0
.end method
