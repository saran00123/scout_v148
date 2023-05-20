.class public abstract Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;
.super Ljava/lang/Object;
.source "DefaultLibraryInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.utils.DefaultLibraryInfo"

.field private static region:Lcom/amazon/identity/auth/device/api/authorization/Region;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->AUTO:Lcom/amazon/identity/auth/device/api/authorization/Region;

    sput-object v0, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getLibraryRegion()Lcom/amazon/identity/auth/device/api/authorization/Region;
    .registers 2

    const-class v0, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;

    monitor-enter v0

    .line 14
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setLibraryRegion(Lcom/amazon/identity/auth/device/api/authorization/Region;)V
    .registers 4

    const-class v0, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;

    monitor-enter v0

    .line 23
    :try_start_3
    sput-object p0, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    .line 24
    sget-object p0, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Region overwritten : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/authorization/Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 25
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method
