.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;
.super Ljava/lang/Object;
.source "ParamBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionBean"
.end annotation


# instance fields
.field private VIO:I

.field private track:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrack()I
    .registers 2

    .line 472
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->track:I

    return v0
.end method

.method public getVIO()I
    .registers 2

    .line 464
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->VIO:I

    return v0
.end method

.method public setTrack(I)V
    .registers 2

    .line 476
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->track:I

    return-void
.end method

.method public setVIO(I)V
    .registers 2

    .line 468
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->VIO:I

    return-void
.end method
