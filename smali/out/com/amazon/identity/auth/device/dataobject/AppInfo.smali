.class public Lcom/amazon/identity/auth/device/dataobject/AppInfo;
.super Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;
    }
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final DELIM:Ljava/lang/String; = ","

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dataobject.AppInfo"


# instance fields
.field private allowedScopes:[Ljava/lang/String;

.field private appFamilyId:Ljava/lang/String;

.field private appVariantId:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private grantedPermissions:[Ljava/lang/String;

.field private mAuthzHost:Ljava/lang/String;

.field private mExchangeHost:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private payload:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "rowid"

    const-string v1, "AppFamilyId"

    const-string v2, "PackageName"

    const-string v3, "AllowedScopes"

    const-string v4, "GrantedPermissions"

    const-string v5, "ClientId"

    const-string v6, "AppVariantId"

    const-string v7, "AuthzHost"

    const-string v8, "ExchangeHost"

    const-string v9, "Payload"

    .line 28
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 22

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    .line 78
    invoke-direct/range {v0 .. v9}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->setRowId(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10

    .line 62
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appFamilyId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appVariantId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->packageName:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->grantedPermissions:[Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clientId:Ljava/lang/String;

    .line 69
    iput-object p9, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    .line 70
    iput-object p7, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mAuthzHost:Ljava/lang/String;

    .line 71
    iput-object p8, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mExchangeHost:Ljava/lang/String;

    return-void
.end method

.method private getPayload()Lorg/json/JSONObject;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    return-object v0
.end method

.method private payloadEquals(Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Z
    .registers 8

    .line 214
    invoke-direct {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getPayload()Lorg/json/JSONObject;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    if-nez p1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    :cond_f
    if-nez p1, :cond_12

    return v2

    .line 222
    :cond_12
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 224
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    :try_start_22
    iget-object v4, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 228
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APIKeys not equal: key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not equal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_4d} :catch_57
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_4d} :catch_4e

    return v2

    :catch_4e
    move-exception p1

    .line 235
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "APIKeys not equal: ClassCastExceptionException"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_57
    move-exception p1

    .line 232
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "APIKeys not equal: JSONException"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_60
    return v1
.end method


# virtual methods
.method public clone()Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 14

    .line 244
    new-instance v12, Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getRowId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appFamilyId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appVariantId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->grantedPermissions:[Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clientId:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mAuthzHost:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mExchangeHost:Ljava/lang/String;

    iget-object v11, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v12
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clone()Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 196
    instance-of v0, p1, Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    .line 197
    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    .line 198
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appFamilyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appVariantId:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppVariantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->packageName:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAllowedScopes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->grantedPermissions:[Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clientId:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mAuthzHost:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAuthorizationHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mExchangeHost:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getExchangeHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 206
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payloadEquals(Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Z

    move-result p1

    if-eqz p1, :cond_6e

    const/4 v1, 0x1

    :cond_6e
    return v1
.end method

.method public getAllowedRemoteScopes()[Ljava/lang/String;
    .registers 7

    .line 134
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 140
    invoke-static {v4}, Lcom/amazon/identity/auth/device/dataobject/Scope;->isLocal(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 141
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 144
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAllowedScopes()[Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    return-object v0
.end method

.method public getAppFamilyId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVariantId()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appVariantId:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthorizationHost()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mAuthzHost:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;
    .registers 2

    .line 191
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AppInfoDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getExchangeHost()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mExchangeHost:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantedPermissions()[Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->grantedPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getValuesForInsert(Landroid/content/Context;)Landroid/content/ContentValues;
    .registers 5

    .line 172
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 174
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appFamilyId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->PACKAGE_NAME:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->ALLOWED_SCOPES:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->toDelimitedString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->GRANTED_PERMISSIONS:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->grantedPermissions:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->toDelimitedString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->CLIENT_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->APP_VARIANT_ID:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appVariantId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->AUTHZ_HOST:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mAuthzHost:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->EXCHANGE_HOST:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mExchangeHost:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->PAYLOAD:Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/AppInfo$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ver"

    .line 166
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAttributeByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const-string v0, "1"

    :goto_c
    return-object v0
.end method

.method public setAllowedScopes([Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    return-void
.end method

.method public setAppFamilyId(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setAppVariantId(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appVariantId:Ljava/lang/String;

    return-void
.end method

.method public setAuthorizationHost(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mAuthzHost:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setExchangeHost(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mExchangeHost:Ljava/lang/String;

    return-void
.end method

.method public setGrantedPermissions([Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->grantedPermissions:[Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .registers 4

    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p1

    .line 126
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Payload String not correct JSON.  Setting payload to null"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public setPayload(Lorg/json/JSONObject;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->payload:Lorg/json/JSONObject;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 255
    :catch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ rowid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getRowId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appFamilyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVariantId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->appVariantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowedScopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->allowedScopes:[Ljava/lang/String;

    .line 259
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", grantedPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->grantedPermissions:[Ljava/lang/String;

    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AuthzHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mAuthzHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExchangeHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->mExchangeHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
