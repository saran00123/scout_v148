.class public Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;
.super Ljava/lang/Object;
.source "OtaStatusBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/OtaStatusBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyBean"
.end annotation


# instance fields
.field private dwnMode:I

.field private instMode:I

.field private msg:Ljava/lang/String;

.field private progress:I

.field private reboot:Z

.field private status:I

.field private step:I

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDwnMode()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->dwnMode:I

    return v0
.end method

.method public getInstMode()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->instMode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->progress:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->status:I

    return v0
.end method

.method public getStep()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->step:I

    return v0
.end method

.method public getVer()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public isReboot()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->reboot:Z

    return v0
.end method

.method public setDwnMode(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->dwnMode:I

    return-void
.end method

.method public setInstMode(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->instMode:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->progress:I

    return-void
.end method

.method public setReboot(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->reboot:Z

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->status:I

    return-void
.end method

.method public setStep(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->step:I

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->ver:Ljava/lang/String;

    return-void
.end method
