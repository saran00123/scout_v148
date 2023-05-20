.class Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;
.super Ljava/lang/Object;
.source "ThirdPartyServiceHelper.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->bindHighestVersionedService(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

.field final synthetic val$serviceConnection:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

.field final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 296
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->this$0:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$serviceConnection:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$serviceIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindError(Lcom/amazon/identity/auth/device/AuthError;)V
    .registers 3

    .line 307
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setService(Landroid/os/IInterface;)V

    .line 308
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->access$200(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V

    .line 309
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setServiceIntent(Landroid/content/Intent;)V

    .line 310
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bind - error"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onBindSuccess(Landroid/os/IInterface;)V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setService(Landroid/os/IInterface;)V

    .line 300
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$serviceConnection:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->access$200(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V

    .line 301
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$mapServiceInfo:Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setServiceIntent(Landroid/content/Intent;)V

    .line 302
    iget-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
