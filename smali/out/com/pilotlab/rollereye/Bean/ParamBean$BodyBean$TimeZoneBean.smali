.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;
.super Ljava/lang/Object;
.source "ParamBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneBean"
.end annotation


# instance fields
.field private GMT:Ljava/lang/String;

.field private area:Ljava/lang/String;

.field private continent:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getContinent()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->continent:Ljava/lang/String;

    return-object v0
.end method

.method public getGMT()Ljava/lang/String;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->GMT:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 386
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->time:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 402
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->type:I

    return v0
.end method

.method public setArea(Ljava/lang/String;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->area:Ljava/lang/String;

    return-void
.end method

.method public setContinent(Ljava/lang/String;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->continent:Ljava/lang/String;

    return-void
.end method

.method public setGMT(Ljava/lang/String;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->GMT:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    .line 390
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->time:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 406
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->type:I

    return-void
.end method
