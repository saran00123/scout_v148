.class public Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private appId:Ljava/lang/String;

.field private appStorePkgName:Ljava/lang/String;

.field private business:Ljava/lang/String;

.field private carrierId:Ljava/lang/String;

.field private isShowImmediate:Z

.field private minIntervalDay:I

.field private mustBtnOne:Z

.field private packageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceZone:Ljava/lang/String;

.field private targetPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->isShowImmediate:Z

    iput v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->minIntervalDay:I

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->mustBtnOne:Z

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStorePkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->appStorePkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->business:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->carrierId:Ljava/lang/String;

    return-object v0
.end method

.method public getMinIntervalDay()I
    .registers 2

    iget v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->minIntervalDay:I

    return v0
.end method

.method public getPackageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->packageList:Ljava/util/List;

    return-object v0
.end method

.method public getServiceZone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->serviceZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->targetPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isMustBtnOne()Z
    .registers 2

    iget-boolean v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->mustBtnOne:Z

    return v0
.end method

.method public isShowImmediate()Z
    .registers 2

    iget-boolean v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->isShowImmediate:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppStorePkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->appStorePkgName:Ljava/lang/String;

    return-void
.end method

.method public setBusiness(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->business:Ljava/lang/String;

    return-void
.end method

.method public setCarrierId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->carrierId:Ljava/lang/String;

    return-void
.end method

.method public setMinIntervalDay(I)V
    .registers 2

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->minIntervalDay:I

    return-void
.end method

.method public setMustBtnOne(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->mustBtnOne:Z

    return-void
.end method

.method public setPackageList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->packageList:Ljava/util/List;

    return-void
.end method

.method public setServiceZone(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->serviceZone:Ljava/lang/String;

    return-void
.end method

.method public setShowImmediate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->isShowImmediate:Z

    return-void
.end method

.method public setTargetPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/AppInfoAdapter;->targetPkgName:Ljava/lang/String;

    return-void
.end method
