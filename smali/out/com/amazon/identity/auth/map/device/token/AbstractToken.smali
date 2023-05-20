.class public abstract Lcom/amazon/identity/auth/map/device/token/AbstractToken;
.super Ljava/lang/Object;
.source "AbstractToken.java"

# interfaces
.implements Lcom/amazon/identity/auth/map/device/token/Token;


# static fields
.field public static final ALWAYS_EXPIRE:J = -0x1L

.field public static final KEY_CREATION_TIME:Ljava/lang/String; = "creation_time"

.field public static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.map.device.token.AbstractToken"

.field public static final NEVER_EXPIRE:J


# instance fields
.field private final _token:Ljava/lang/String;

.field protected final localCreationTimestamp:Landroid/text/format/Time;

.field protected tokenData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->_token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/map/device/token/AbstractToken;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    if-eqz p1, :cond_2d

    .line 42
    invoke-virtual {p1}, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 46
    invoke-virtual {p1}, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->_token:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    return-void

    .line 44
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Token string may not be null for an AbstractToken"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 61
    iput-object p1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->_token:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/text/format/Time;->setToNow()V

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    .line 64
    invoke-direct {p0}, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->initTokenData()V

    return-void

    .line 59
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Token string may not be null for an AbstractToken"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    const-string/jumbo v0, "token"

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->_token:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->_token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 82
    iput-object p1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    const-string v0, "creation_time"

    .line 85
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_44

    .line 87
    sget-object v1, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->LOG_TAG:Ljava/lang/String;

    const-string v3, "creation_time not found in token data when creating Token, setting creation time to now"

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 89
    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 93
    :cond_44
    :try_start_44
    iget-object v3, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_67

    .line 95
    :catch_4e
    sget-object v1, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unable to parse creation_time from token data when creating Token, setting creation time to now"

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 97
    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_67
    return-void

    .line 79
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Token string may not be null for an AbstractToken"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static convertStringToRegionHint(Ljava/lang/String;)Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;
    .registers 2

    .line 133
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->EU:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 135
    sget-object p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->EU:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    return-object p0

    .line 137
    :cond_f
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->FE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 139
    sget-object p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->FE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    return-object p0

    .line 141
    :cond_1e
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 143
    sget-object p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    return-object p0

    .line 147
    :cond_2d
    sget-object p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->NA:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    return-object p0
.end method

.method private initTokenData()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->_token:Ljava/lang/String;

    const-string/jumbo v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "creation_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static millisToSecs(J)J
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 165
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static secsToMillis(J)J
    .registers 4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final getData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->tokenData:Ljava/util/Map;

    const-string v1, "directedid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTimestamp()Landroid/text/format/Time;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->localCreationTimestamp:Landroid/text/format/Time;

    return-object v0
.end method

.method protected final getToken()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->_token:Ljava/lang/String;

    return-object v0
.end method
