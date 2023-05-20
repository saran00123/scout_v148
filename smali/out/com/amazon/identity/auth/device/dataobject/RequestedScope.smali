.class public Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
.super Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
.source "RequestedScope.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;,
        Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;
    }
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dataobject.RequestedScope"


# instance fields
.field private appFamilyId:Ljava/lang/String;

.field private directedId:Ljava/lang/String;

.field private mAuthorizationAccessTokenId:J

.field private mAuthorizationRefreshTokenId:J

.field private scopeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "rowid"

    const-string v1, "Scope"

    const-string v2, "AppId"

    const-string v3, "DirectedId"

    const-string v4, "AtzAccessTokenId"

    const-string v5, "AtzRefreshTokenId"

    .line 32
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->ALL_COLUMNS:[Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 49
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 18

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p6

    move-wide/from16 v6, p8

    .line 66
    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setRowId(J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 49
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setRowId(J)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 53
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 49
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    .line 54
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-wide p4, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    .line 62
    iput-wide p6, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
    .registers 12

    .line 190
    new-instance v10, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getRowId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    iget-wide v8, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v10
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->clone()Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 173
    instance-of v0, p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 175
    :try_start_5
    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    .line 176
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getScopeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-wide v2, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_40

    iget-wide v2, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    .line 178
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v4
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_3b} :catch_41

    cmp-long p1, v2, v4

    if-nez p1, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1

    :catch_41
    move-exception p1

    .line 180
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return v1
.end method

.method public getAppFamilyId()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationAccessTokenId()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    return-wide v0
.end method

.method public getAuthorizationRefreshTokenId()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    return-wide v0
.end method

.method public bridge synthetic getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;
    .registers 2

    .line 168
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getDirectedId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lcom/amazon/identity/auth/device/dataobject/Scope;
    .registers 3

    .line 149
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/Scope;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/dataobject/Scope;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScopeValue()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValuesForInsert(Landroid/content/Context;)Landroid/content/ContentValues;
    .registers 5

    .line 154
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->SCOPE:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->AUTHORIZATION_ACCESS_TOKEN_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->AUTHORIZATION_REFRESH_TOKEN_ID:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;

    iget v1, v1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$COL_INDEX;->colId:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method public isGranted()Ljava/lang/Boolean;
    .registers 5

    .line 106
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->UNKNOWN:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_c
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v2, v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 110
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 113
    :cond_19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppFamilyId(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setAuthorizationAccessTokenId(J)V
    .registers 3

    .line 98
    iput-wide p1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    return-void
.end method

.method public setAuthorizationRefreshTokenId(J)V
    .registers 3

    .line 100
    iput-wide p1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    return-void
.end method

.method public setDirectedId(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    return-void
.end method

.method public setIsGranted(Ljava/lang/Boolean;)V
    .registers 4

    .line 127
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->isGranted()Ljava/lang/Boolean;

    move-result-object v0

    if-eq p1, v0, :cond_38

    if-nez p1, :cond_17

    .line 129
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->UNKNOWN:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 130
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->UNKNOWN:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    goto :goto_38

    .line 132
    :cond_17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_2a

    .line 133
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 134
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->REJECTED:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    goto :goto_38

    .line 137
    :cond_2a
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->GRANTED_LOCALLY:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 138
    sget-object p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->GRANTED_LOCALLY:Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;

    iget-wide v0, p1, Lcom/amazon/identity/auth/device/dataobject/RequestedScope$OUTCOME;->longVal:J

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    :cond_38
    :goto_38
    return-void
.end method

.method public setScopeValue(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ rowid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getRowId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appFamilyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", directedId=<obscured>, atzAccessTokenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", atzRefreshTokenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 200
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getRowId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->scopeValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->appFamilyId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->directedId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationAccessTokenId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->mAuthorizationRefreshTokenId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
