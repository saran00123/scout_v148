.class public abstract Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;
.super Ljava/lang/Object;
.source "DataEncryptionUpgradeHelper.java"


# static fields
.field public static final ENCRYPTION_VERSION_NAMESPACE:Ljava/lang/String; = "encryptVersion"

.field protected static final EXISTED_VERSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    const-class v0, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "AES_00"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->EXISTED_VERSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public static byteToCipherString([B)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_9

    :cond_4
    const/4 v0, 0x2

    .line 110
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static byteToPlainString([B)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 91
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception p0

    .line 95
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->TAG:Ljava/lang/String;

    const-string v2, "UTF-8 unsupported from byte to String! Just return null"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static cipherStringToByte(Ljava/lang/String;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_9

    :cond_4
    const/4 v0, 0x2

    .line 123
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static plainStringToByte(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string/jumbo v1, "utf-8"

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    .line 69
    sget-object v1, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->TAG:Ljava/lang/String;

    const-string v2, "UTF-8 unsupported from string to byte! Just return null"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-object v0
.end method


# virtual methods
.method protected getStoredVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "encryptVersion"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/StoredPreferences;->getStoredEncryptionVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onDowngrade(Ljava/lang/String;Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;)V
.end method

.method public abstract onUpgrade(Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;)V
.end method

.method protected storeEncryptionVersion(Ljava/lang/String;)V
    .registers 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "encryptVersion"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/datastore/DataEncryptionUpgradeHelper;->mVersion:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/amazon/identity/auth/device/StoredPreferences;->setEncryptionVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
