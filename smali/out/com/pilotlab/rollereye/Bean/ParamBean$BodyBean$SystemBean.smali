.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;
.super Ljava/lang/Object;
.source "ParamBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBean"
.end annotation


# instance fields
.field private freeSpace:Ljava/lang/String;

.field private hwVer:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private swVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeSpace()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->freeSpace:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVer()Ljava/lang/String;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->hwVer:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getSwVer()Ljava/lang/String;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->swVer:Ljava/lang/String;

    return-object v0
.end method

.method public setFreeSpace(Ljava/lang/String;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->freeSpace:Ljava/lang/String;

    return-void
.end method

.method public setHwVer(Ljava/lang/String;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->hwVer:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->mac:Ljava/lang/String;

    return-void
.end method

.method public setSwVer(Ljava/lang/String;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->swVer:Ljava/lang/String;

    return-void
.end method
