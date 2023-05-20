.class public Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;
.super Ljava/lang/Object;
.source "ScheduleBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamBean"
.end annotation


# instance fields
.field private notice:I

.field private record:I

.field private route:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotice()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->notice:I

    return v0
.end method

.method public getRecord()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->record:I

    return v0
.end method

.method public getRoute()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->route:Ljava/lang/String;

    return-object v0
.end method

.method public setNotice(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->notice:I

    return-void
.end method

.method public setRecord(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->record:I

    return-void
.end method

.method public setRoute(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->route:Ljava/lang/String;

    return-void
.end method
