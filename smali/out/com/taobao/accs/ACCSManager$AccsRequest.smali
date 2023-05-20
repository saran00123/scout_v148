.class public Lcom/taobao/accs/ACCSManager$AccsRequest;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ACCSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccsRequest"
.end annotation


# instance fields
.field public businessId:Ljava/lang/String;

.field public data:[B

.field public dataId:Ljava/lang/String;

.field public host:Ljava/net/URL;

.field public isUnitBusiness:Z

.field public serviceId:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public targetServiceName:Ljava/lang/String;

.field public timeout:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 6

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 483
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    .line 484
    iput-object p2, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 485
    iput-object p3, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    .line 486
    iput-object p4, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .registers 9

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 465
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    .line 466
    iput-object p2, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 467
    iput-object p3, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    .line 468
    iput-object p4, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 469
    iput-object p5, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    .line 470
    iput-object p6, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 471
    iput-object p7, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setBusinessId(Ljava/lang/String;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/net/URL;)V
    .registers 2

    .line 514
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    return-void
.end method

.method public setIsUnitBusiness(Z)V
    .registers 2

    .line 502
    iput-boolean p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    return-void
.end method

.method public setTargetServiceName(Ljava/lang/String;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    return-void
.end method

.method public setTimeOut(I)V
    .registers 2

    .line 498
    iput p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    return-void
.end method
