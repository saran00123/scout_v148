.class public Lcom/amazon/identity/auth/device/dataobject/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mScopeData:Ljava/lang/String;

.field private final mScopeName:Ljava/lang/String;

.field private scopeDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/dataobject/Scope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->scopeDescription:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->mScopeName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->mScopeData:Ljava/lang/String;

    return-void
.end method

.method public static getDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p0
.end method

.method public static isLocal(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "device"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getScopeData()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->mScopeData:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getScopeDescription()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->scopeDescription:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 32
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->mScopeName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/dataobject/Scope;->getDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->scopeDescription:Ljava/lang/String;

    .line 35
    :cond_15
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->scopeDescription:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScopeName()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->mScopeName:Ljava/lang/String;

    return-object v0
.end method

.method public isLocal()Z
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->mScopeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dataobject/Scope;->isLocal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setScopeDescription(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Scope;->scopeDescription:Ljava/lang/String;

    return-void
.end method
