.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigateBean"
.end annotation


# instance fields
.field private calibration:I

.field private editPath:I

.field private estimate:I

.field private patrol:I

.field private patrolName:Ljava/lang/String;

.field private reverse:I

.field private waypoint:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalibration()I
    .registers 2

    .line 289
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->calibration:I

    return v0
.end method

.method public getEditPath()I
    .registers 2

    .line 281
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->editPath:I

    return v0
.end method

.method public getEstimate()I
    .registers 2

    .line 249
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->estimate:I

    return v0
.end method

.method public getPatrol()I
    .registers 2

    .line 257
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->patrol:I

    return v0
.end method

.method public getPatrolName()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->patrolName:Ljava/lang/String;

    return-object v0
.end method

.method public getReverse()I
    .registers 2

    .line 265
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->reverse:I

    return v0
.end method

.method public getWaypoint()I
    .registers 2

    .line 297
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->waypoint:I

    return v0
.end method

.method public setCalibration(I)V
    .registers 2

    .line 293
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->calibration:I

    return-void
.end method

.method public setEditPath(I)V
    .registers 2

    .line 285
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->editPath:I

    return-void
.end method

.method public setEstimate(I)V
    .registers 2

    .line 253
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->estimate:I

    return-void
.end method

.method public setPatrol(I)V
    .registers 2

    .line 261
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->patrol:I

    return-void
.end method

.method public setPatrolName(Ljava/lang/String;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->patrolName:Ljava/lang/String;

    return-void
.end method

.method public setReverse(I)V
    .registers 2

    .line 269
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->reverse:I

    return-void
.end method

.method public setWaypoint(I)V
    .registers 2

    .line 301
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->waypoint:I

    return-void
.end method
