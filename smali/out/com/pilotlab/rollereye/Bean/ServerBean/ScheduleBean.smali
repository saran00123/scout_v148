.class public Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;
.super Ljava/lang/Object;
.source "ScheduleBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;
    }
.end annotation


# instance fields
.field private active:I

.field private expire:I

.field private id:I

.field private name:Ljava/lang/String;

.field private paramBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

.field private repeat:Ljava/lang/String;

.field private repeatType:I

.field private startTime:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->active:I

    return v0
.end method

.method public getExpire()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->expire:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->paramBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    return-object v0
.end method

.method public getRepeat()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->repeat:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatType()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->repeatType:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->active:I

    return-void
.end method

.method public setExpire(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->expire:I

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setParamBean(Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->paramBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    return-void
.end method

.method public setRepeat(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->repeat:Ljava/lang/String;

    return-void
.end method

.method public setRepeatType(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->repeatType:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->type:Ljava/lang/String;

    return-void
.end method
