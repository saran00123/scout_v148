.class public Lcom/amazon/identity/auth/device/dataobject/CodePair;
.super Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
.source "CodePair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;
    }
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dataobject.CodePair"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mCreationTime:Ljava/util/Date;

.field private final mDeviceCode:Ljava/lang/String;

.field private final mExpirationTime:Ljava/util/Date;

.field private final mInterval:I

.field private final mScopes:[Ljava/lang/String;

.field private final mUserCode:Ljava/lang/String;

.field private final mVerificationUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, "Id"

    const-string v1, "AppId"

    const-string v2, "UserCode"

    const-string v3, "DeviceCode"

    const-string v4, "VerificationUri"

    const-string v5, "Interval"

    const-string v6, "CreationTime"

    const-string v7, "ExpirationTime"

    const-string v8, "Scopes"

    .line 43
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;ILjava/util/Date;Ljava/util/Date;[Ljava/lang/String;)V
    .registers 9

    .line 31
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mAppId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mUserCode:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mDeviceCode:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mVerificationUri:Ljava/net/URI;

    .line 36
    iput p5, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mInterval:I

    .line 37
    invoke-static {p6}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mCreationTime:Ljava/util/Date;

    .line 38
    invoke-static {p7}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mExpirationTime:Ljava/util/Date;

    .line 39
    iput-object p8, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mScopes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_72

    .line 126
    instance-of v1, p1, Lcom/amazon/identity/auth/device/dataobject/CodePair;

    if-eqz v1, :cond_72

    .line 127
    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/CodePair;

    .line 128
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mAppId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mUserCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getUserCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mDeviceCode:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getDeviceCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mVerificationUri:Ljava/net/URI;

    .line 130
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getVerificationUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mInterval:I

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mCreationTime:Ljava/util/Date;

    .line 132
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mExpirationTime:Ljava/util/Date;

    .line 133
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mScopes:[Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getScopes()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    const/4 v0, 0x1

    :cond_72
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mCreationTime:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;
    .registers 2

    .line 121
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceCode()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mDeviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mExpirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getInterval()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mInterval:I

    return v0
.end method

.method public getScopes()[Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mScopes:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mUserCode:Ljava/lang/String;

    return-object v0
.end method

.method public getValuesForInsert(Landroid/content/Context;)Landroid/content/ContentValues;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/datastore/EncryptionException;
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    invoke-static {}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->USER_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mUserCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v3, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->DEVICE_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v3, v3, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mDeviceCode:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/datastore/AESEncryptionHelper;->encryptString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->VERIFICATION_URI:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mVerificationUri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->INTERVAL:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object p1, p1, v2

    iget v2, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->CREATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mCreationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mScopes:[Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/utils/ScopeUtils;->convertScopeArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->SCOPES:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVerificationUri()Ljava/net/URI;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;->mVerificationUri:Ljava/net/URI;

    return-object v0
.end method
