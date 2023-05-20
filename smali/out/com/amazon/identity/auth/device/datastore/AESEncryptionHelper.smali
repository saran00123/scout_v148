.class public Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;
.super Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;
.source "AESEncryptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;",
        ">",
        "Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;"
    }
.end annotation


# static fields
.field public static final IS_QUALIFIED_PLATFORM:Z

.field public static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final TAG:Ljava/lang/String; = "AESEncryptionHelper"

.field public static final VERSION:Ljava/lang/String; = "AES_00"


# instance fields
.field private mTable_Namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->IS_QUALIFIED_PLATFORM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "AES_00"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->mTable_Namespace:Ljava/lang/String;

    return-void
.end method

.method public static encryptString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/datastore/EncryptionException;
        }
    .end annotation

    .line 103
    sget-boolean v0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->IS_QUALIFIED_PLATFORM:Z

    if-eqz v0, :cond_1e

    if-nez p1, :cond_7

    goto :goto_1e

    .line 110
    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptor;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AESEncryptor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/datastore/AESEncryptor;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 114
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to encrypt data"

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance p1, Lcom/amazon/identity/auth/device/datastore/EncryptionException;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/datastore/EncryptionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 105
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to encrypt data. IS_QUALIFIED_PLATFORM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->IS_QUALIFIED_PLATFORM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Context is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public decryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "AES_00|"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->IS_QUALIFIED_PLATFORM:Z

    if-eqz v0, :cond_20

    .line 125
    :try_start_c
    iget-object v0, p0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/datastore/AESEncryptor;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AESEncryptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptor;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    .line 129
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to decrypt data, return null"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :cond_20
    return-object p1
.end method

.method public onDowngrade(Ljava/lang/String;Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;)V
    .registers 3

    .line 98
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string p2, "onDowngrade called"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;)V
    .registers 9

    .line 42
    iget-object v0, p0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->mTable_Namespace:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->getStoredVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES_00"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    sget-boolean v1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->IS_QUALIFIED_PLATFORM:Z

    if-nez v1, :cond_14

    goto/16 :goto_8a

    :cond_14
    if-eqz v0, :cond_2b

    .line 50
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->EXISTED_VERSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 55
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string v0, "Encryption version is not recognized."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->mTable_Namespace:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->storeEncryptionVersion(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_2b
    :try_start_2b
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string v1, "onUpgrade called, updating the table..."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0, v0}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->findAllRows([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    move v3, v2

    .line 67
    :goto_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;->getValuesForInsert(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_56
    const/4 v3, 0x1

    .line 73
    :goto_57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_71

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;->getRowId()J

    move-result-wide v4

    aget-object v6, v1, v2

    invoke-virtual {p1, v4, v5, v6}, Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;->updateRow(JLandroid/content/ContentValues;)Z

    move-result v4

    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_71
    if-nez v3, :cond_7b

    .line 80
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string v0, "Fail to insert updated data to db"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_7b
    iget-object p1, p0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->mTable_Namespace:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->storeEncryptionVersion(Ljava/lang/String;)V
    :try_end_80
    .catch Lcom/amazon/identity/auth/device/datastore/EncryptionException; {:try_start_2b .. :try_end_80} :catch_81

    goto :goto_89

    :catch_81
    move-exception p1

    .line 88
    sget-object v0, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to complete the upgrading, abort."

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_89
    return-void

    .line 46
    :cond_8a
    :goto_8a
    sget-object p1, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->TAG:Ljava/lang/String;

    const-string v0, "No need to upgrade."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
