.class public Lcom/pilotlab/rollereye/Services/HttpServices;
.super Ljava/lang/Object;
.source "HttpServices.java"


# instance fields
.field private retrofitRollerEyeHelper:Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;

.field private retrofitServerHelper:Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRollerEyeRetrofitHelper()Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitRollerEyeHelper:Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitRollerEyeHelper:Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitRollerEyeHelper:Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;

    return-object v0
.end method

.method private getServerRetrofitHelper()Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitServerHelper:Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitServerHelper:Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitServerHelper:Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitRollerEyeHelper:Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;

    .line 48
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/HttpServices;->retrofitServerHelper:Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;

    return-void
.end method

.method public getLocalServiceAPI()Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getRollerEyeRetrofitHelper()Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Manager/RollerEyeRetrofitHelper;->getServiceAPI()Lcom/pilotlab/rollereye/Api/RollerEyeServiceApi;

    move-result-object v0

    return-object v0
.end method

.method public getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerRetrofitHelper()Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->getServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    return-object v0
.end method
