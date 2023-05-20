.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;
.super Ljava/lang/Object;
.source "ParamBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContourBean"
.end annotation


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()D
    .registers 3

    .line 204
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 212
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->y:D

    return-wide v0
.end method

.method public setX(D)V
    .registers 3

    .line 208
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->x:D

    return-void
.end method

.method public setY(D)V
    .registers 3

    .line 216
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->y:D

    return-void
.end method
