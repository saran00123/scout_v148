.class public Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;
.super Ljava/lang/Object;
.source "CodePairManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.authorization.CodePairManager"

.field private static ScopeNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private static mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    .line 257
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$3;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$3;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->ScopeNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;Ljava/util/List;Landroid/content/Context;)Z
    .registers 3

    .line 29
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->deleteExistingCodePairSuccessful(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;Ljava/util/List;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/util/List;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;)Lcom/amazon/identity/auth/device/dataobject/CodePair;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/CodePairError;,
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->getNewCodePairFromPandaService(Ljava/util/List;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;)Lcom/amazon/identity/auth/device/dataobject/CodePair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;Lcom/amazon/identity/auth/device/dataobject/CodePair;Landroid/content/Context;)Z
    .registers 3

    .line 29
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->insertCodePairIntoDatabaseSuccessful(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;Lcom/amazon/identity/auth/device/dataobject/CodePair;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/identity/auth/device/dataobject/CodePair;)Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->getCodePairResult(Lcom/amazon/identity/auth/device/dataobject/CodePair;)Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/util/List;)[Ljava/lang/String;
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->convertScopeListToStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->vendAccessToken(Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700([Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/CodePair;
    .registers 2

    .line 29
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->getExistingCodePair([Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/CodePair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;Lcom/amazon/identity/auth/device/dataobject/CodePair;)Z
    .registers 2

    .line 29
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->isCodePairValid(Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;Lcom/amazon/identity/auth/device/dataobject/CodePair;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900()Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;
    .registers 1

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    return-object v0
.end method

.method private static convertScopeListToStringArray(Ljava/util/List;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->ScopeNameComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 276
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/api/authorization/Scope;

    add-int/lit8 v3, v1, 0x1

    .line 277
    invoke-interface {v2}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_10

    :cond_26
    return-object v0
.end method

.method private static convertToInternalScope(Ljava/util/List;)[Lcom/amazon/identity/auth/device/dataobject/Scope;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            ">;)[",
            "Lcom/amazon/identity/auth/device/dataobject/Scope;"
        }
    .end annotation

    .line 239
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/identity/auth/device/dataobject/Scope;

    .line 241
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/api/authorization/Scope;

    .line 242
    invoke-interface {v2}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getName()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-interface {v2}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getScopeData()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 245
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    .line 246
    new-instance v5, Lcom/amazon/identity/auth/device/dataobject/Scope;

    invoke-direct {v5, v3, v2}, Lcom/amazon/identity/auth/device/dataobject/Scope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v1

    move v1, v4

    goto :goto_b

    :cond_30
    add-int/lit8 v2, v1, 0x1

    .line 249
    new-instance v4, Lcom/amazon/identity/auth/device/dataobject/Scope;

    invoke-direct {v4, v3}, Lcom/amazon/identity/auth/device/dataobject/Scope;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    move v1, v2

    goto :goto_b

    :cond_3b
    return-object v0
.end method

.method public static createCodePair(Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;)V
    .registers 6

    .line 44
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->getScopes()Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->getListener()Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->getAppInfo()Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p0

    if-eqz v1, :cond_24

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_24

    .line 56
    :cond_19
    sget-object v3, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->THREAD_POOL:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$1;

    invoke-direct {v4, v2, v1, v0, p0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$1;-><init>(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;Ljava/util/List;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 50
    :cond_24
    :goto_24
    sget-object p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Vend code pair - No scopes passed in"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p0, Lcom/amazon/identity/auth/device/CodePairError;

    sget-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const-string v1, "No scopes provided in parameters"

    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/CodePairError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;)V

    .line 52
    invoke-virtual {v2, p0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;->onError(Lcom/amazon/identity/auth/device/CodePairError;)V

    return-void
.end method

.method private static deleteExistingCodePairSuccessful(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;Ljava/util/List;Landroid/content/Context;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->convertScopeListToStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->getExistingCodePair([Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/CodePair;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 95
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The existing code pair found! Delete it before getting a new one"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->delete(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 97
    sget-object p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Succesfully deleted the old code pair and will create a new one!"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 99
    :cond_1f
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Unable to delete code pair in db"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance p1, Lcom/amazon/identity/auth/device/CodePairError;

    sget-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    invoke-direct {p1, p2, v0}, Lcom/amazon/identity/auth/device/CodePairError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;->onError(Lcom/amazon/identity/auth/device/CodePairError;)V

    const/4 p0, 0x0

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method private static getCodePairResult(Lcom/amazon/identity/auth/device/dataobject/CodePair;)Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;
    .registers 5

    .line 119
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getUserCode()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getVerificationUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/authorization/CodePairResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user code is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getUserCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getExistingCodePair([Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/CodePair;
    .registers 5

    .line 209
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Try finding an exisiting code pair for requested scopes"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;

    move-result-object p1

    .line 213
    invoke-static {p0}, Lcom/amazon/identity/auth/device/utils/ScopeUtils;->convertScopeArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Scopes"

    .line 216
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/amazon/identity/auth/device/datastore/CodePairDataSource;->findOneRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/dataobject/CodePair;

    if-nez p0, :cond_2c

    .line 218
    sget-object p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Existing code pair not found!"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_2c
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Existing code pair found for given scope"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getNewCodePairFromPandaService(Ljava/util/List;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;)Lcom/amazon/identity/auth/device/dataobject/CodePair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/dataobject/AppInfo;",
            "Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;",
            ")",
            "Lcom/amazon/identity/auth/device/dataobject/CodePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/CodePairError;,
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    if-eqz p0, :cond_14

    .line 228
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_14

    .line 232
    :cond_9
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->convertToInternalScope(Ljava/util/List;)[Lcom/amazon/identity/auth/device/dataobject/Scope;

    move-result-object p0

    .line 233
    sget-object p3, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    invoke-virtual {p3, p0, p1, p2}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getCodePair([Lcom/amazon/identity/auth/device/dataobject/Scope;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Lcom/amazon/identity/auth/device/dataobject/CodePair;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getToken(Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;)V
    .registers 6

    .line 130
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->getScopes()Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->getAppInfo()Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->getListener()Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    move-result-object p0

    if-eqz v1, :cond_24

    .line 135
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_24

    .line 142
    :cond_19
    sget-object v3, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->THREAD_POOL:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$2;

    invoke-direct {v4, v1, v0, v2, p0}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager$2;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 136
    :cond_24
    :goto_24
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Get Authorization tokens - No scopes passed in"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "No scopes provided in parameters"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public static hasCodePairExpired(Ljava/util/Date;)Z
    .registers 2

    .line 267
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method private static insertCodePairIntoDatabaseSuccessful(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;Lcom/amazon/identity/auth/device/dataobject/CodePair;Landroid/content/Context;)Z
    .registers 5

    .line 110
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->insert(Landroid/content/Context;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_18

    .line 111
    new-instance p1, Lcom/amazon/identity/auth/device/CodePairError;

    sget-object p2, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const-string v0, "Unable to insert code pair into db"

    invoke-direct {p1, v0, p2}, Lcom/amazon/identity/auth/device/CodePairError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;->onError(Lcom/amazon/identity/auth/device/CodePairError;)V

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method private static isCodePairValid(Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;Lcom/amazon/identity/auth/device/dataobject/CodePair;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 179
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No existing code pair found for getting token"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p1, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return v0

    .line 185
    :cond_15
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/CodePair;->getExpirationTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->hasCodePairExpired(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 186
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Code Pair has already expired"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p1, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return v0

    :cond_31
    const/4 p0, 0x1

    return p0
.end method

.method public static setServerCommunication(Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;)V
    .registers 1

    .line 36
    sput-object p0, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    return-void
.end method

.method private static vendAccessToken(Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;-><init>()V

    .line 197
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 199
    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->vendToken(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 201
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/CodePairManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object p2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_IO:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v0, "Error communicating with server"

    invoke-direct {p1, v0, p0, p2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method
