.class public Lcom/amazon/identity/auth/device/dataobject/Profile;
.super Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;
    }
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final EXPIRATION_TIME:I = 0x36ee80

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dataobject.Profile"


# instance fields
.field protected mAppFamilyId:Ljava/lang/String;

.field protected mData:Ljava/lang/String;

.field protected mExpirationTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "Id"

    const-string v1, "ExpirationTime"

    const-string v2, "AppId"

    const-string v3, "Data"

    .line 38
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/dataobject/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    return-void
.end method

.method private dataEquals(Lcom/amazon/identity/auth/device/dataobject/Profile;)Z
    .registers 7

    .line 187
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_32

    if-nez v3, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_30
    const/4 p1, 0x1

    return p1

    .line 202
    :catch_32
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private getDataFromJSON()Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 162
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_42

    .line 170
    :try_start_e
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_25} :catch_26

    goto :goto_12

    :catch_26
    move-exception v1

    .line 178
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse profile data in database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catch_42
    move-exception v0

    .line 164
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile;->LOG_TAG:Ljava/lang/String;

    const-string v2, "JSONException while parsing profile information in database"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    :cond_52
    :goto_52
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 98
    instance-of v1, p1, Lcom/amazon/identity/auth/device/dataobject/Profile;

    if-eqz v1, :cond_44

    .line 100
    :try_start_7
    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/Profile;

    .line 101
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    .line 102
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/Profile;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 103
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->dataEquals(Lcom/amazon/identity/auth/device/dataobject/Profile;)Z

    move-result p1
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_25} :catch_29

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    :catch_29
    move-exception p1

    .line 105
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return v0
.end method

.method public getAppFamilyId()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDataAsBundle()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getDataFromJSON()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;
    .registers 2

    .line 90
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getExpirationTime()Ljava/util/Date;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getRowId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValuesForInsert(Landroid/content/Context;)Landroid/content/ContentValues;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/datastore/EncryptionException;
        }
    .end annotation

    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    if-eqz v1, :cond_2c

    .line 72
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    invoke-static {}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 76
    :cond_2c
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_3a
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->DATA:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->encryptString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasExpired()Z
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    if-eqz v0, :cond_11

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .registers 2

    .line 128
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/Profile;->setRowId(J)V

    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ rowid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->toLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
