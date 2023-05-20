.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraBean"
.end annotation


# instance fields
.field private night:I

.field private open:I

.field private record:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNight()I
    .registers 2

    .line 230
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->night:I

    return v0
.end method

.method public getOpen()I
    .registers 2

    .line 214
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->open:I

    return v0
.end method

.method public getRecord()I
    .registers 2

    .line 222
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->record:I

    return v0
.end method

.method public setNight(I)V
    .registers 2

    .line 234
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->night:I

    return-void
.end method

.method public setOpen(I)V
    .registers 2

    .line 218
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->open:I

    return-void
.end method

.method public setRecord(I)V
    .registers 2

    .line 226
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->record:I

    return-void
.end method
