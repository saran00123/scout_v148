.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;
.super Ljava/lang/Object;
.source "ParamBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundEffectBean"
.end annotation


# instance fields
.field private activate:I

.field private detectEffect:I

.field private effectValue:I

.field private patrolEffect:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivate()I
    .registers 2

    .line 427
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->activate:I

    return v0
.end method

.method public getDetectEffect()I
    .registers 2

    .line 451
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->detectEffect:I

    return v0
.end method

.method public getEffectValue()I
    .registers 2

    .line 435
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->effectValue:I

    return v0
.end method

.method public getPatrolEffect()I
    .registers 2

    .line 443
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->patrolEffect:I

    return v0
.end method

.method public setActivate(I)V
    .registers 2

    .line 431
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->activate:I

    return-void
.end method

.method public setDetectEffect(I)V
    .registers 2

    .line 455
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->detectEffect:I

    return-void
.end method

.method public setEffectValue(I)V
    .registers 2

    .line 439
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->effectValue:I

    return-void
.end method

.method public setPatrolEffect(I)V
    .registers 2

    .line 447
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->patrolEffect:I

    return-void
.end method
