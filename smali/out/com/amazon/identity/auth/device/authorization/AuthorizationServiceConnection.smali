.class public Lcom/amazon/identity/auth/device/authorization/AuthorizationServiceConnection;
.super Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;
.source "AuthorizationServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection<",
        "Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.AuthorizationServiceConnection"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;-><init>()V

    .line 18
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AuthorizationServiceConnection created"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 29
    invoke-static {p1}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    move-result-object p1

    return-object p1
.end method

.method public getServiceInterfaceClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;",
            ">;"
        }
    .end annotation

    .line 23
    const-class v0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    return-object v0
.end method
