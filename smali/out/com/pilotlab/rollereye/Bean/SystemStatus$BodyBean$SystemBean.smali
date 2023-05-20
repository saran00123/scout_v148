.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBean"
.end annotation


# instance fields
.field private hwVer:Ljava/lang/String;

.field private swVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHwVer()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;->hwVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSwVer()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;->swVer:Ljava/lang/String;

    return-object v0
.end method

.method public setHwVer(Ljava/lang/String;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;->hwVer:Ljava/lang/String;

    return-void
.end method

.method public setSwVer(Ljava/lang/String;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;->swVer:Ljava/lang/String;

    return-void
.end method
