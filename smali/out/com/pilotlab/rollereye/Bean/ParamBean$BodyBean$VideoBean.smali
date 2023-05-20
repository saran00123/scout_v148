.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;
.super Ljava/lang/Object;
.source "ParamBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoBean"
.end annotation


# instance fields
.field private antiFlicker:I

.field private bitRate:I

.field private cameraLight:I

.field private height:I

.field private nightVision:I

.field private nightVisionSensitivity:I

.field private wideDynamic:I

.field private wideDynamicRange:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAntiFlicker()I
    .registers 2

    .line 258
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->antiFlicker:I

    return v0
.end method

.method public getBitRate()I
    .registers 2

    .line 290
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->bitRate:I

    return v0
.end method

.method public getCameraLight()I
    .registers 2

    .line 306
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->cameraLight:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 250
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->height:I

    return v0
.end method

.method public getNightVision()I
    .registers 2

    .line 266
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->nightVision:I

    return v0
.end method

.method public getNightVisionSensitivity()I
    .registers 2

    .line 298
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->nightVisionSensitivity:I

    return v0
.end method

.method public getWideDynamic()I
    .registers 2

    .line 274
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->wideDynamic:I

    return v0
.end method

.method public getWideDynamicRange()I
    .registers 2

    .line 282
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->wideDynamicRange:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->width:I

    return v0
.end method

.method public setAntiFlicker(I)V
    .registers 2

    .line 262
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->antiFlicker:I

    return-void
.end method

.method public setBitRate(I)V
    .registers 2

    .line 294
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->bitRate:I

    return-void
.end method

.method public setCameraLight(I)V
    .registers 2

    .line 310
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->cameraLight:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 254
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->height:I

    return-void
.end method

.method public setNightVision(I)V
    .registers 2

    .line 270
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->nightVision:I

    return-void
.end method

.method public setNightVisionSensitivity(I)V
    .registers 2

    .line 302
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->nightVisionSensitivity:I

    return-void
.end method

.method public setWideDynamic(I)V
    .registers 2

    .line 278
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->wideDynamic:I

    return-void
.end method

.method public setWideDynamicRange(I)V
    .registers 2

    .line 286
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->wideDynamicRange:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 246
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->width:I

    return-void
.end method
