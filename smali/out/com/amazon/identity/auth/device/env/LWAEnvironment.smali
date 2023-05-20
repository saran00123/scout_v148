.class public Lcom/amazon/identity/auth/device/env/LWAEnvironment;
.super Ljava/lang/Object;
.source "LWAEnvironment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getEndpointDomainBuilder(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;
    .registers 4

    const-class v0, Lcom/amazon/identity/auth/device/env/LWAEnvironment;

    monitor-enter v0

    .line 19
    :try_start_3
    new-instance v1, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;

    invoke-direct {v1, p0, p1}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isProd()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static overrideHTTPSConnectionSecurity(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 1

    return-void
.end method
