.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
.super Ljava/lang/Object;
.source "ParamBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;,
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;,
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;,
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;,
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;,
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;
    }
.end annotation


# instance fields
.field private monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

.field private motion:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

.field private soundEffect:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

.field private system:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

.field private timeZone:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

.field private video:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMonitor()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    return-object v0
.end method

.method public getMotion()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->motion:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    return-object v0
.end method

.method public getSoundEffect()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->soundEffect:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    return-object v0
.end method

.method public getSystem()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->system:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    return-object v0
.end method

.method public getTimeZone()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->timeZone:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

    return-object v0
.end method

.method public getVideo()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->video:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    return-object v0
.end method

.method public setMonitor(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    return-void
.end method

.method public setMotion(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->motion:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    return-void
.end method

.method public setSoundEffect(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->soundEffect:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    return-void
.end method

.method public setSystem(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->system:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    return-void
.end method

.method public setTimeZone(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->timeZone:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

    return-void
.end method

.method public setVideo(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->video:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    return-void
.end method
