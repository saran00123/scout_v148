.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;
.super Ljava/lang/Object;
.source "ParamBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoneBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;
    }
.end annotation


# instance fields
.field private active:Z

.field private areas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;",
            ">;"
        }
    .end annotation
.end field

.field private motion:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->areas:Ljava/util/List;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->active:Z

    return v0
.end method

.method public isMotion()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->motion:Z

    return v0
.end method

.method public setActive(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->active:Z

    return-void
.end method

.method public setAreas(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;",
            ">;)V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->areas:Ljava/util/List;

    return-void
.end method

.method public setMotion(Z)V
    .registers 2

    .line 158
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->motion:Z

    return-void
.end method
