.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;
.super Ljava/lang/Object;
.source "ParamBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;
    }
.end annotation


# instance fields
.field private cat:Z

.field private dog:Z

.field private motion:Z

.field private person:Z

.field private zone:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getZone()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->zone:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;

    return-object v0
.end method

.method public isCat()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->cat:Z

    return v0
.end method

.method public isDog()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->dog:Z

    return v0
.end method

.method public isMotion()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->motion:Z

    return v0
.end method

.method public isPerson()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->person:Z

    return v0
.end method

.method public setCat(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->cat:Z

    return-void
.end method

.method public setDog(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->dog:Z

    return-void
.end method

.method public setMotion(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->motion:Z

    return-void
.end method

.method public setPerson(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->person:Z

    return-void
.end method

.method public setZone(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->zone:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;

    return-void
.end method
