.class final Lcom/amazon/identity/auth/device/authorization/TokenHelper$1;
.super Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper;
.source "TokenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/authorization/TokenHelper;->getTokenFromSSO(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$scopes:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/TokenHelper$1;->val$scopes:[Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/TokenHelper$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/authorization/TokenHelper$1;->doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/TokenHelper$1;->val$scopes:[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/TokenHelper$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/amazon/identity/auth/device/authorization/TokenHelper;->access$000(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
