.class public abstract Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;
.super Ljava/lang/Object;
.source "MAPServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.MAPServiceConnection"


# instance fields
.field protected mListener:Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;

.field protected mService:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->mService:Landroid/os/IInterface;

    return-void
.end method


# virtual methods
.method public abstract getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public abstract getServiceInterfaceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected isValidService(Landroid/os/IBinder;)Z
    .registers 5

    .line 63
    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->getServiceInterfaceClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return p1

    :catch_11
    move-exception p1

    .line 66
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 34
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceConnected called"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->isValidService(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 37
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->mService:Landroid/os/IInterface;

    .line 38
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->mListener:Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->mService:Landroid/os/IInterface;

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;->onBindSuccess(Landroid/os/IInterface;)V

    goto :goto_29

    .line 41
    :cond_1b
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->mListener:Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;

    new-instance p2, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Returned service\'s interface doesn\'t match authorization service"

    invoke-direct {p2, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;->onBindError(Lcom/amazon/identity/auth/device/AuthError;)V

    :goto_29
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 57
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceDisconnected called"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->mService:Landroid/os/IInterface;

    return-void
.end method

.method public setServiceListener(Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 49
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/MAPServiceConnection;->mListener:Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;

    return-void

    .line 47
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
