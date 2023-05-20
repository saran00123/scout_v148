.class public Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;
.super Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;
.source "ProdEndpointDomainBuilder.java"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 18
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->NA:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const/4 v3, 0x0

    const-string v4, "https://na.account.amazon.com"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->EU:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const-string v4, "https://eu.account.amazon.com"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->FE:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const-string v4, "https://apac.account.amazon.com"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->NA:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const/4 v4, 0x1

    const-string v5, "https://api.sandbox.amazon.com"

    invoke-static {v0, v1, v4, v2, v5}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->EU:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const-string v5, "https://api.sandbox.amazon.co.uk"

    invoke-static {v0, v1, v4, v2, v5}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->FE:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const-string v5, "https://api-sandbox.amazon.co.jp"

    invoke-static {v0, v1, v4, v2, v5}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->NA:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const-string v4, "https://api.amazon.com"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->EU:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const-string v4, "https://api.amazon.co.uk"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/Region;->FE:Lcom/amazon/identity/auth/device/api/authorization/Region;

    const-string v4, "https://api.amazon.co.jp"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    .line 33
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/env/ProdEndpointDomainBuilder;->stage:Lcom/amazon/identity/auth/device/authorization/Stage;

    return-void
.end method
