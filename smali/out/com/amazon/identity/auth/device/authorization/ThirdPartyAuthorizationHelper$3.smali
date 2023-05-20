.class Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;
.super Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper;
.source "ThirdPartyAuthorizationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->startAuthorizationWithService(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$scopes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 200
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;->this$0:Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;->val$scopes:[Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;->val$scopes:[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;->val$options:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->access$200(Landroid/content/Context;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper$3;->doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
