.class Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;
.super Ljava/lang/Object;
.source "ThirdPartyServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MAPServiceInfo"
.end annotation


# instance fields
.field private mConnection:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

.field private final mIsPrimary:Z

.field private final mMapVersion:Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mService:Landroid/os/IInterface;

.field private mServiceIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;Lcom/amazon/identity/auth/map/device/utils/MAPVersion;Landroid/os/IInterface;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;ZLandroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .registers 8

    .line 445
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->this$0:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mMapVersion:Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    .line 447
    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mService:Landroid/os/IInterface;

    .line 448
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setConnection(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V

    .line 449
    iput-boolean p5, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mIsPrimary:Z

    .line 450
    iput-object p6, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 451
    iput-object p7, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 434
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V
    .registers 2

    .line 434
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setConnection(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V

    return-void
.end method

.method private getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method private setConnection(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mConnection:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    return-void
.end method


# virtual methods
.method public getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mConnection:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    return-object v0
.end method

.method public getMapVersion()Lcom/amazon/identity/auth/map/device/utils/MAPVersion;
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mMapVersion:Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    return-object v0
.end method

.method public getService()Landroid/os/IInterface;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mService:Landroid/os/IInterface;

    return-object v0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isPrimary()Z
    .registers 2

    .line 484
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mIsPrimary:Z

    return v0
.end method

.method public setService(Landroid/os/IInterface;)V
    .registers 2

    .line 463
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mService:Landroid/os/IInterface;

    return-void
.end method

.method public setServiceIntent(Landroid/content/Intent;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method
