.class public final Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
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

.field private paramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/updatesdk/service/appmgr/bean/Param;",
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

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/f;->e()Lcom/huawei/updatesdk/service/otaupdate/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->serviceZone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->serviceZone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->targetPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->isShowImmediate:Z

    return p0
.end method

.method static synthetic access$300(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->minIntervalDay:I

    return p0
.end method

.method static synthetic access$400(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->mustBtnOne:Z

    return p0
.end method

.method static synthetic access$500(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->packageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->paramList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;
    .registers 3

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;-><init>(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$a;)V

    return-object v0
.end method

.method public setIsShowImmediate(Z)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->isShowImmediate:Z

    return-object p0
.end method

.method public setMinIntervalDay(I)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    .registers 2

    iput p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->minIntervalDay:I

    return-object p0
.end method

.method public setMustBtnOne(Z)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->mustBtnOne:Z

    return-object p0
.end method

.method public setPackageList(Ljava/util/List;)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->packageList:Ljava/util/List;

    return-object p0
.end method

.method public setParamList(Ljava/util/List;)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/updatesdk/service/appmgr/bean/Param;",
            ">;)",
            "Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->paramList:Ljava/util/List;

    return-object p0
.end method

.method public setServiceZone(Ljava/lang/String;)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->serviceZone:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetPkgName(Ljava/lang/String;)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->targetPkgName:Ljava/lang/String;

    return-object p0
.end method
